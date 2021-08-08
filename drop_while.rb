# PROBLEM
# Write a #drop_while method that iterates over a collection, passing each element to a block,
# and continues until the block's return value is false or nil. It returns the remaining elements
# of the collection (along with the element that produced a falsey block return value) as an array. 
#
# If the Array is empty, or if the block returns a truthy value for every element, #drop_while should 
# return an empty Array.
#
# EXAMPLES
# drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
# drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
# drop_while([1, 3, 5, 6]) { |value| true } == []
# drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
# drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
# drop_while([]) { |value| true } == []
#
# DATA STRUCTURE
# Array
#
# ALGORITHM
# - iterate over array elements (using #each_with_object)
#   - drop = true
#   - if yield(element) && drop
#     - next
#   - else
#     obj << element
#     drop = false
# - return obj
#   
# CODE

def drop_while(collection)
  drop = true
  collection.each_with_object([]) do |elem, arr|
    next if yield(elem) && drop
    arr << elem
    drop = false
  end
end

# TESTS
p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []

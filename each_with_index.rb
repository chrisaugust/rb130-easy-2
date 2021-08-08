# PROBLEM
# The Enumerable#each_with_index method iterates over the members of a collection, passing each 
# element and its index to the associated block. The value returned by the block is not used. 
# each_with_index returns a reference to the original collection.
#
# Write a method called each_with_index that behaves similarly for Arrays. It should take an 
# Array as an argument, and a block. It should yield each element and an index number to the 
# block. each_with_index should return a reference to the original Array.
#
# Your method may use #each, #each_with_object, #inject, loop, for, while, or until to iterate through 
# the Array passed in as an argument, but must not use any other methods that iterate through an Array 
# or any other collection.
#
# EXAMPLES
# see tests
#
# DATA STRUCTURE
# Array
#
# ALGORITHM
# - initialize counter variable to 0
# - while counter < collection.size
#   - yield(collection[counter], counter)
#   - increment counter
# - return collection
#
# CODE

def each_with_index(collection)
  counter = 0
  while counter < collection.size
    yield(collection[counter], counter)
    counter += 1
  end
  collection
end

# TESTS

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end
p result == [1, 3, 6]

# output:
# 0 -> 1
# 1 -> 3
# 2 -> 36
# true

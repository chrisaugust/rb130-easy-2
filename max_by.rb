# Algorithm
# - initialize counter to 0
# - initialize max_val to return value of yielding first element to block
# - iterate over elements in collection argument with #each_with_index
#   - yield element to block
#   - compare `max` to return value of block for current element
#   - set `max` to return value if it has greater value
# - return collection[max_index] 

def max_by(collection)
  return nil if collection.empty?
  max_index = 0
  max_val = yield(collection[0])
  collection.each_with_index do |elem, idx|
    current_val = yield(elem)
    if max_val < current_val
      max_index = idx
      max_val = current_val
    end
  end 
  collection[max_index]
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil

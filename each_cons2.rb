# Problem
# Update the #each_cons method so that it can handle any number of elements 
# at a time.
#
# It will take a second argument specifying the number of elements that 
# can be processed.
#
# Examples
# see tests
#  
# Algorithm
# - iterate over elements with #each_with_index
#   - break if index + n - 1 >= collection.size
#   - yield(*collection[index..(index + n - 1)])

# Code
def each_cons(collection, n)
  collection.each_with_index do |_, idx|
    break if idx + n - 1 >= collection.size
    yield(*collection[idx..(idx + n - 1)])
  end
  nil
end

# Tests
hash = {}
result = each_cons([1, 3, 6, 10], 1) do |value|
  hash[value] = true
end
p hash == {1 => true, 3 => true, 6 => true, 10 => true}

hash = {}
result = each_cons([1, 3, 6, 10], 2) do |value1, value2|
  hash[value1] = value2
end
p hash == {1 => 3, 3 => 6, 6 => 10}

hash = {}
result = each_cons([1, 3, 6, 10], 3) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6], 3 => [6, 10] }

hash = {}
result = each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6, 10] }

hash = {}
result = each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash == {}

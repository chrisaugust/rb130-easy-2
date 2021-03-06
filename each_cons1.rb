# Algorithm
# - outer loop 0..collection.size-2 |i|
#   - inner loop 1..collection.size - 1 |j|
#     - yield(collection[i], collection[j])
#

# Code
def each_cons(collection)
  (0..collection.size-2).each do |idx|
    yield(collection[idx], collection[idx+1])
  end
  nil
end

# Tests
hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil

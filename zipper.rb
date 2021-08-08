# PROBLEM
# Write your own version of zip that does the same type of operation. It should take two Arrays 
# as arguments, and return a new Array (the original Arrays should not be changed). Do not 
# use the built-in Array#zip method. You may assume that both input arrays have the same number of 
# elements.
#
# EXAMPLES
# zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
#
# DATA STRUCTURE
# Array
#
# ALGORITHM
# - initialize an empty `results` array
# - use #each_with_index to iterate over elements in collections
#   - append [current_element, array2[current_idx] to results array
# - return results array
#
# CODE

def zip(array1, array2)
  results = []
  array1.each_with_index do |current_element, current_index|
    results << [current_element, array2[current_index]]
  end
  results
end

# TESTS
p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

# PROBLEM
# The Range#step method lets you iterate over a range of values where each value in the iteration is 
# the previous value plus a "step" value. It returns the original range.
# 
# Write a method that does the same thing as Range#step, but does not operate on a range. Instead, your 
# method should take 3 arguments: the starting value, the ending value, and the step value to be applied 
# to each iteration. Your method should also take a block to which it will yield (or call) successive 
# iteration values.
# 
# EXAMPLES
# step(1, 10, 3) { |value| puts "value = #{value}" }
#
# DATA STRUCTURE
# Array
#
# ALGORITHM
# - initialize `sequence` to empty array
# - initialize `value` to starting value argument
# - until value <  ending value:
#   - yield value to block and add to sequence
#   - value += step_value
# - return `sequence`
#
# CODE

def step(starting_value, ending_value, step_value)
  sequence = []
  value = starting_value

  while value <= ending_value
    yield(value)
    sequence << value
    value += step_value
  end

  sequence
end

# TESTS
p step(1, 10, 3) { |value| puts "value = #{value}" }
p step(5, 106, 5) { |value| puts "value = #{value}" }

# Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero.
def sum(arr)
  sum = 0
  arr.each { |number| sum += number }
  return sum
end

# Define a method max_2_sum(array) which takes an array of integers as an argument and returns the sum of its two largest elements.

# For an empty array it should return zero. For an array with just one element, it should return that element.
def max_2_sum(arr)
  return 0 unless arr.length > 0
  return arr[0] unless arr.length > 1
  sorted_arr = arr.sort { |x, y| y <=> x }
  return sorted_arr[0] + sorted_arr[1]
end

def sum_to_n?(arr, n)
  return false if arr.length == 0
  combinations = arr.combination(2).to_a
  combinations.each { |combination| return true if sum(combination) == n }
  return false
end

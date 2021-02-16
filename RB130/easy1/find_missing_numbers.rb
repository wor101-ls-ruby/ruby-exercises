

=begin
**Problem**
# Write a method that takes a sorted array of integers as an argument, 
# and returns an array that includes all of the missing integers (in order) between the first and last elements of the argument.

Rules: 
Explicit
  - Input: an Array of integers
  - Output: an Array of integers
  - input array is sorted (only from least to most?)
  - output array should have all integers missing from input array
  - if no integers missing an empty array is returned
  - if the input array contains only 1 integer then an empty array is returned

**Examples / Test Cases**
missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []


**Data Structures**


**Algorithm**
1. return empty array if input array is of size 0 or 1
2. create range using first and last integer from input array
3. subtract input array from range

=end




# def missing(array)
#   return [] if array.size <= 1
  
#   range = (array.first..array.last).to_a
#   p range - array
# end

# solution from Launch School
def missing(array)
  result = []
  
  array.each_cons(2) do |first, second|
    result.concat(((first + 1)...second).to_a)
  end
  result
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
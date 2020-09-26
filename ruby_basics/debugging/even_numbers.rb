# even_numbers.rb

## iterate through the numbers array and return a new array containing only the even numbers.
 # However, our code isn't producing the expected output? Why not? How to fix??

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|     # Array#map method returns an array of all elements.  We want to use the Array#select method
  n.even?
end

p even_numbers # expected output: [2, 6, 8]
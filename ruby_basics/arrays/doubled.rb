# doubled.rb

# Use Array#map to iterate over numbers and return a new array with each number doubled. Assign the returned array to a variable named doubled_numbers and print its value using #P

numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map { |number| number * 2 }     # .each returns the original array wheras .map returns a new array.  .map! mutates the caller and modifies the original array

p doubled_numbers


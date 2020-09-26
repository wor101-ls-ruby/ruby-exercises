# low_medium_or_high?.rb

## use Hash#select to iterate over numbers and return a hash containing only key-value pairs where the value is less than 25. 
 # Assign the returned hash to a variable named low_numbers and print its value using #p

 numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select { |key, value| value  < 25 }   # Hash#select returns a hash consisting of entries for which the block returns true

p low_numbers
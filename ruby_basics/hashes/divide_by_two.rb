# divide_by_two.rb

## use Enumberable#map to iterate over numbers and return an array containing each number divided by 2.  
  # Assign the returned array to a variable named half_numbers and print its value using #p

  numbers = {
    high:   100,
    medium: 50,
    low:    10
  }

  half_numbers = numbers.map { |key, value| value / 2 }     # Enumerable.map works similar to Array.map but can accept two parameters instead of one. 

  p half_numbers      # Enumberable.map DOES NOT return a Hash but returns an Array   
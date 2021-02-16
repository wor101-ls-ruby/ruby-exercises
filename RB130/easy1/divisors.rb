# Write a method that returns a list of all of the divisors of the positive integer passed in as an argument. 
# The return value can be in any sequence you wish.

=begin
**Problem**
# Write a method that returns a list of all of the divisors of the positive integer passed in as an argument. 
# The return value can be in any sequence you wish.

Rules:
Explicit
  - Input: a positive integer
  - Output: an array of all divisors 
  - return an array of all divors of the input integer 
  - include the input integer itself in the return

**Examples / Test Cases**
divisors(1) == [1]
divisors(7) == [1, 7]
divisors(12) == [1, 2, 3, 4, 6, 12]
divisors(98) == [1, 2, 7, 14, 49, 98]
divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute


**Data Structures**


**Algorithm**
1. initialize the reult array 
2.create range from 1 to input integer
3. use #each to iterate over each integer in the range
4. check to see if the input integer is divisible by the current integer
5. if so add it to the result array
6. return the result array

=end

def divisors(input_integer)
  result = []
  
  (1..(input_integer)).to_a.each do |current_integer|
    if input_integer % current_integer == 0
      result << current_integer
      result << (input_integer / current_integer)
    end
    break if current_integer > (input_integer / current_integer)
  end
  p result.uniq.sort
end

# launch school solution
# def divisors(number)
#   1.upto(number).select do |candidate|
#     number % candidate == 0
#   end
# end



p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
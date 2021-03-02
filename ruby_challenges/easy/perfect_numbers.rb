=begin
**Problem**


Rules:
Explicit
  - Input: an Integer
  - Output: a string (perfect, abundant, deficient)
  - perfect numbers are numbers whose sum of its divisors are equal to its
  - abundnant numbers are numbers whose sum of divisors is greater than its
  - deficient numbers are numbers whose sum of divsors are less than its
  - primes are always deficient
  - do not include the input integer as a divisor
  - require a class method #classify

**Examples / Test Cases**
13 = deficient
28 = perfect
12 = abundant
6 = perfect
15 = deficient


**Data Structures**
- input integer
- output string

**Algorithm**
1. require 'prime'
2. return 'deficient' if Prime.prime?(int) returns true
3. initialize variable called remainders that will be an array
4. create a range from 1 up to but not including the input_integer
5. iterate over the range
  - for each number use the modulus operator to see if input_integer divided by current number has a remainders
  - if no remainder then add current integer to the remainders array
6. Sum the remainders array
7. if sum of remainders equals input integer return 'perfect'
8. els if less than return 'deficient'
9. else return 'abundant'


=end
require 'prime'


class PerfectNumber

  def self.classify(input_integer)
    return 'deficient' if Prime.prime?(input_integer)
    raise StandardError if input_integer < 0
    
    remainders_sum = get_remainders(input_integer).sum
    
    if remainders_sum == input_integer
      'perfect'
    elsif remainders_sum < input_integer
      'deficient'
    else
      'abundant'
    end
  end
  
  class << self   # note that the private method does not work on class methods
    private 
  
    def get_remainders(input_integer)
      (1...input_integer).to_a.select { |int| input_integer % int == 0 }
    end
  end
end
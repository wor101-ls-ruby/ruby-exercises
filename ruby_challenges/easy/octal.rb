=begin
**Problem**
Implement octal to decimal conversion. 
Given an octal input string, your program should produce a decimal output. 
Treat invalid input as octal 0.

Note: Implement the conversion yourself. 
Don't use any built-in or library methods that perform the necessary conversions for you. 
In this exercise, the code necessary to perform the conversion is what we're looking for,

Rules:
Explicit
  - Input: a String
  - Output: integer
  - Octal class
    - contstructor takes 1 string parameter
    - #to_decimal instance variable returns integer
    
**Examples / Test Cases**
Octal.new('1').to_decimal == 1
Octal.new('10').to_decimal == 8
Octal.new('17').to_decimal == 15
Octal.new('2047').to_decimal == 1063


**Data Structures**
@octal = string


**Algorithm**
#to_decimal
- initialize octal_array
- initialize decimal_value
- split @octal into an array and reverse the array
- iterate over octal_array with index
  - on each iteration multiply current element by 8 raised to the power of index
  - add total to decimal value
- return decimal value

=end

class Octal
  attr_reader :octal
  
  def initialize(octal)
    @octal = octal
  end
  
  def to_decimal
    octal_array = get_octal_array(octal)
    decimal_value = 0
    return decimal_value if octal_array == 0
    
    octal_array.each_with_index do |int, index|
      if int < 8 
        decimal_value += int * (8**index)
      else
        decimal_value = 0
        break
      end
    end
    decimal_value
  end
  
  private
  
  def get_octal_array(octal)
    return 0 if octal.chars.any? { |char| char.match?(/[^0-7]/) }
    octal.chars.map { |char| char.to_i }.reverse
  end
end

puts Octal.new('7777').to_decimal
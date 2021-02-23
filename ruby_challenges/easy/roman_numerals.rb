=begin
**Problem**
Convert an integer into a string formatted Roman Numeral


Rules:
Explicit
  - Input: 
  - Output: 
  - I = 1
  - V = 5
  - X = 10
  - L = 50
  - C = 100
  - D = 500
  - M = 1,000

**Examples / Test Cases**
3 = 'III'
4 = 'IV'
6 = 'VI'
27 = 'XXVII'
141 = 'CXLI'

**Data Structures**
- input integer
- output string
- roman_numerals = { 1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV', 
                     5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII',
                     9 => 'IX', 10 = 'X', 50 = 'L', 100 = 'C', 
                     500 = 'D', 1000 = 'M' }


**Algorithm**

  -



=end

class RomanNumeral
  ROMAN_NUMERALS = { 0 => '', 1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV', 
                     5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII',
                     9 => 'IX', 10 => 'X', 20 => 'XX', 30 => 'XXX',
                     40 => 'XL', 50 => 'L', 60 => 'LX', 70 => 'LXX', 
                     80 => 'LXX', 90 => 'XC', 100 => 'C', 200 => 'CC',
                     300 => 'CCC', 400 => 'CD', 500 => 'D', 600 => 'DC',
                     700 => 'DCC', 800 => 'DCCC', 900 => 'CM', 1000 => 'M',
                     2000 => 'MM', 3000 => 'MMM'}
  
  attr_reader :integer
  
  def initialize(integer)
    @integer = integer
  end
  
  def to_roman
    roman_numeral = ''
    int_array = integer.to_s.chars.map { |char| char.to_i }
    
    case integer
    when (0..10) then roman_numeral = singles(integer)
    when (11...100) then roman_numeral = tens(int_array)
    when (100...1000) then roman_numeral = hundreds(int_array)
    when (1000...4000) then roman_numeral = thousands(int_array)
    end
    
    roman_numeral
  end
  
  private
  
  def singles(int)
    ROMAN_NUMERALS[int]
  end
  
  def tens(int_array)
      tens_roman = ROMAN_NUMERALS[int_array[0] * 10]
      single = singles(int_array[1])
      tens_roman + single
  end
  
  def hundreds(int_array)
    hundreds_roman = ROMAN_NUMERALS[int_array[0] * 100]
    remaining = tens(int_array[1..-1])
    hundreds_roman + remaining
  end
  
  def thousands(int_array)
    thousands_roman = ROMAN_NUMERALS[int_array[0] * 1000]
    remaining = hundreds(int_array[1..-1])
    thousands_roman + remaining
  end
end


num = RomanNumeral.new(1024)
p num.to_roman

# 'MXXIV'
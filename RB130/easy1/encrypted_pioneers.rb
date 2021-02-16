=begin
**Problem**
# The following list contains the names of individuals who are pioneers in the field of computing or that have had a significant influence on the field. 
# The names are in an encrypted form, though, using a simple (and incredibly weak) form of encryption called Rot13.

Rules:
Explicit
  - Input: large block of string text
  - Output: large block of string text
  - each letter of input text must be switched with a letter 13 positions later in the alphabet

**Examples / Test Cases**



**Data Structures**


**Algorithm**
1. save input text as an array of string characters called input_chars
2. initialize return array
3. iterate over input_chars
4. pass each char to cypher method which wll return correct letter
5. check if char == char.downcase
5. if false then upcase the return char from cypher 
6. add the return char to return array
7. join the return array and return


=end
require 'pry'

def cypher(input_letter)
  letter = input_letter.downcase
  alph1 = ('a'..'m').to_a
  alph2 = ('n'..'z').to_a

  if alph1.include?(letter)
    alph2[alph1.index(letter)]
  elsif alph2.include?(letter)
    alph1[alph2.index(letter)]
  else
    input_letter
  end
end

def upcase?(char)
  char == char.upcase
end

def rot13(input_text)
  input_chars = input_text.chars
  return_array = []
  input_chars.each do |char|
    # binding.pry
    cypher_return = cypher(char)
    cypher_return.upcase! if upcase?(char)
    return_array << cypher_return
  end
  puts return_array.join
end

coded_names = 
  "Nqn Ybirynpr
  Tenpr Ubccre
  Nqryr Tbyqfgvar
  Nyna Ghevat
  Puneyrf Onoontr
  Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
  Wbua Ngnanfbss
  Ybvf Unvog
  Pynhqr Funaaba
  Fgrir Wbof
  Ovyy Tngrf
  Gvz Orearef-Yrr
  Fgrir Jbmavnx
  Xbaenq Mhfr
  Fve Nagbal Ubner
  Zneiva Zvafxl
  Lhxvuveb Zngfhzbgb
  Unllvz Fybavzfxv
  Tregehqr Oynapu"
rot13(coded_names)



# launch school solution

ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

def rot13(encrypted_text)
  encrypted_text.each_char.reduce('') do |result, encrypted_char|
    result + decipher_character(encrypted_char)
  end
end

def decipher_character(encrypted_char)
  case encrypted_char
  when 'a'..'m', 'A'..'M' then (encrypted_char.ord + 13).chr
  when 'n'..'z', 'N'..'Z' then (encrypted_char.ord - 13).chr
  else                         encrypted_char
  end
end

ENCRYPTED_PIONEERS.each do |encrypted_name|
  puts rot13(encrypted_name)
end
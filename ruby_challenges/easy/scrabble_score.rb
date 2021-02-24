=begin
**Problem**
Write a program that, given a word, computes the Scrabble score for that word.

Sum the values of all the tiles used in each word. For instance, lets consider the word CABBAGE which has the following letters and point values:

Rules:
Explicit
  - Input: 
  - Output:
  - class method #score that accepts one string argument
  - returns total value using scores below
  
Letter	Value
A, E, I, O, U, L, N, R, S, T =>	1
D, G                         =>	2
B, C, M, P                   =>	3
F, H, V, W, Y                =>	4
K	                           => 5
J, X	                       => 8
Q, Z	                       => 10

**Examples / Test Cases**
CABBAGE == 14 points

3 points for C
1 point for each A (there are two)
3 points for B (there are two)
2 points for G
1 point for E

3 + 2*1 + 2*3 + 2 + 1
=> 3 + 2 + 6 + 3
=> 5 + 9
=> 14

**Data Structures**
LETTER_VALUE = { %w(A E I O U L N R S T) => 1, %w(D G) => 2,
                 %w(B C M P) => 3, %w(F H V W Y) => 4, 
                 %w(K) => 5, %w(J X) => 8, %w(Q Z) => 10 }


**Algorithm**
- #score
  - create return_score and set to 0
  - turn input string into an array of chars (upcase)
  - create an array of keys from the LETTER_VALUE hash
  - iterate over array of chars
    - create key variable
    - iterate over array_of_key
      - if current char is included in array_of_keys then set key_variable to current key & break
    - use key to get value from LETTER_VALUE and add to return_score
  - return_score


=end

class Scrabble
LETTER_VALUE = { %w(A E I O U L N R S T) => 1, %w(D G) => 2,
                 %w(B C M P) => 3, %w(F H V W Y) => 4, 
                 %w(K) => 5, %w(J X) => 8, %w(Q Z) => 10 }

KEYS = LETTER_VALUE.keys

  def initialize(word)
    @word = word
  end
  
  def score
    Scrabble.score(@word)
  end
  
  def self.score(word)
    return_score = 0
    return return_score unless word
    word_chars =  word.strip.upcase.chars
 
    word_chars.each do |char|
      char_key = nil
      KEYS.each { |key| char_key = key if key.include?(char) }
      return_score += LETTER_VALUE[char_key]
    end
    return_score
  end
end

word = Scrabble.new(" \t\n")
p word.score

p Scrabble.score("Age")


# launch school solution
# class Scrabble
#   attr_reader :word

#   POINTS = {
#     'AEIOULNRST'=> 1,
#     'DG' => 2,
#     'BCMP' => 3,
#     'FHVWY' => 4,
#     'K' => 5,
#     'JX' => 8,
#     'QZ' => 10
# }
#   def initialize(word)
#     @word = word ? word : ''
#   end

#   def score
#     letters = word.upcase.gsub(/[^A-Z]/, '').chars

#     total = 0
#     letters.each do |letter|
#       POINTS.each do |all_letters, point|
#         total += point if all_letters.include?(letter)
#       end
#     end
#     total
#   end

#   def self.score(word)
#     Scrabble.new(word).score
#   end
# end
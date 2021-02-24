=begin
**Problem**
Write a program that takes a word and a list of possible anagrams and selects the correct sublist that contains the anagrams of the word.

For example, given the word "listen" and a list of candidates like "enlists", "google", "inlets", and "banana", the program should return a list containing "inlets". Please read the test suite for the exact rules of anagrams


Rules:
Explicit
  - Input: array of strings
  - Output: array of strings
  - each string in the return array must have the same number and type of characters as the Anagram oject string
  - if no matches return an empty array
  - #match method to find and return matching anagrams
  - identical words should not be returned
  - case insensitive
  
  

**Examples / Test Cases**



**Data Structures**
- Anagram object
  - contains local variable called @word that is set upon initialization
  - public #match method that accepts an Array of strings as an argument and returns and array of strings

**Algorithm**
- #match
  - iterate over each string from the array
    - for each string turn it into an array of chars (downcase each letter)
    - turn @word into an array of chars (downcase each letter)
    - if size of two arrays is different go to next string
    - sort each array of chars
    - if both arrays are equal to each other then add current string to return_array

=end

class Anagram
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    return_array = []
    
    array.each do |string|
      next if string.downcase == @word.downcase
      
      word_chars = @word.chars.map! { |char| char.downcase }
      string_chars = string.chars.map! { |char| char.downcase }
      
      next if word_chars.size != string_chars.size
      
      return_array << string if word_chars.sort == string_chars.sort 
    end
    
    return_array
  end
end

anagram = Anagram.new("Ant")

p anagram.match(%w(Tan farmer nat))


# lauch school solution with helper methods
# class Anagram
#   attr_reader :word

#   def initialize(word)
#     @word = word.downcase
#   end

#   def match(word_array)
#     word_array.select do |ana|
#       ana.downcase != word && anagram?(ana, word)
#     end
#   end

#   private

#   def sorted_letters(str)
#     str.downcase.chars.sort.join
#   end

#   def anagram?(word1, word2)
#     sorted_letters(word1) == sorted_letters(word2)
#   end
# end
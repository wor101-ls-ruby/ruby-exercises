=begin
**Problem**
Write a program that can calculate the Hamming distance between two DNA strands.

By counting the number of differences between two homologous DNA strands taken from different genomes with a common ancestor, we get a measure of the minimum number of point mutations that could have occurred on the evolutionary path between the two strands.

This is called the Hamming distance.

The Hamming distance is only defined for sequences of equal length. If you have two sequences of unequal length, you should compute the Hamming distance over the shorter length.

Rules:
Explicit
  - Input: strings
  - Output: integer
  - return the number of differences between 2 strings
  - if strings of unequal lenght, comput the distance over the shorter length

**Examples / Test Cases**
GAGCCTACTAACGGGAT
CATCGTAATGACGGCCT
^ ^ ^  ^ ^    ^^
The Hamming distance between these two DNA strands is 7.



**Data Structures**
- input strings
- output integer

**Algorithm**
- create @strand variable to hold DNA string
- #hamming_distance method 
  - create hamming_distance and set to 0
  - accepts one string as a method
  - identify shortest string and determine difference in size
  - turn each string into arrays
  - iterate over the shortest array with index and check to see if the characters in  * will have to adjust for string starting at different places
    each array match
      - if not add +1 to hamming_distance
      -
  - return hamming_distance


=end

require 'pry'

class DNA
  attr_reader :strand
  
  def initialize(strand)
    @strand = strand
  end
  
  def hamming_distance(other_strand)
    short_strand = strand.size < other_strand.size ? strand : other_strand
    long_strand = strand.size >= other_strand.size ? strand : other_strand
    string_differences(short_strand, long_strand[0...short_strand.size])
  end
  
  private

  def string_differences(string1, string2)
    difference = 0
    
    string1.chars.each_with_index do |char, index|
      difference += 1 if char != string2.chars[index]
    end
    difference
  end
end

# dna_small = DNA.new('ABCDEFG')
# p dna_small.hamming_distance('EFBG')

# dna1 = DNA.new('GAGCCTACTAACGGGAT')
# p dna1.hamming_distance('CATCGTAATGACGGCCT') == 7

dna2 = DNA.new('GGACGGATTCTGACCTGGACTAATTTTGGGG')
p dna2.hamming_distance('AGGACGGATTCTGACCTGGACTAATTTTGGGG') == 19
p dna2.hamming_distance('AGGACGGATTCTGACCTGGACTAATTTTGGGG') 
# dna3 = DNA.new('GACTACGGACAGGGTAGGGAAT')
# p dna3.hamming_distance('GACATCGCACACC') == 5

  
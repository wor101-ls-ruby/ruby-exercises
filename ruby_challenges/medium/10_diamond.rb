=begin
**Problem**
The diamond exercise takes as its input a letter, and outputs it in a diamond shape. 
Given a letter, it prints a diamond starting with 'A', with the supplied letter at the widest point.


Rules:
Explicit
  - Input: 
  - Output:
  - The first row contains one 'A'.
  - The last row contains one 'A'.
  - All rows, except the first and last, have exactly two identical letters.
  - The diamond is horizontally symmetric.
  - The diamond is vertically symmetric.
  - The diamond has a square shape (width equals height).
  - The letters form a diamond shape.
  - The top half has the letters in ascending order.
  - The bottom half has the letters in descending order.
  - The four corners (containing the spaces) are triangles.
Implicit
  - # of lines is twice a letters position in alphabet - 1 

**Examples / Test Cases**
'C' outputs:

  A
 B B
C   C
 B B
  A


**Data Structures**
- ALPHABET = (A..Z).to_a
- @letter = input lettter
- @size = ((index of input lettr + 1) * 2) - 1
- diamond_top_letters = ALPHABET[0..(index_of_input_letter)]
- diamond_bottom_letters = diamond_top[0..-2].reverse

**Algorithm**
#make_diamond(letter)
  - set @size
  - create ouput_array
  - set diamond_top_letters
  - set diamond_bottom_letters
  - create width variable and set to 0
  - iterate over diamond_top_letters with index
    - if index is 0 
      - add current letter to output_array 
      - width += 1
    - if index is > 0 
      - add current letter + ' ' * width + letter to output_array
      - width += 2
  -iterate over diamond_bottom_letters with index
    - if index < diamond_bottom_letters size - 1
      - width -= 2
      - add current letter + ' ' * width + letter to output_array
    - add current letter to return array
  - center each element of the output_array based on size of middle string
  - add a line break to end of each element in output_array
  - join output_array and return the string

=end

class Diamond
  ALPHABET = ('A'..'Z').to_a
  

  def self.make_diamond(letter)
    size = ALPHABET.index(letter) + 1
    output_array = []
    
    diamond_top_letters = ALPHABET[0...(size)]
    diamond_bottom_letters = diamond_top_letters[0..-2].reverse
    
    output_array += diamond_top_lines(diamond_top_letters)

    middle_line_size = output_array.last.size
    output_array += diamond_bottom_lines(diamond_bottom_letters, (middle_line_size - 2) )

    output_array.map! { |line| "#{line.center(middle_line_size)}\n" }
    output_array.join
  end
  
  private
  
  def self.diamond_top_lines(diamond_top_letters)
    return_array = []
    width = 0
    
    diamond_top_letters.each_with_index do |letter, index|
      if index == 0
        return_array << letter
        width += 1
      else
        return_array << letter + (' ' * width) + letter
        width += 2
      end
    end 
    
    return_array
  end
  
  def self.diamond_bottom_lines(diamond_bottom_letters, width)
    return_array = []
    diamond_bottom_letters.each_with_index do |letter, index|
      if index < (diamond_bottom_letters.size - 1)
        width -= 2
        return_array << letter + (' ' * width) + letter
      else
        return_array << letter
      end
    end    
    return_array
  end
  

  
  
end

puts Diamond.make_diamond('C')


# Launch School solution
=begin
class Diamond
  def self.make_diamond(letter)
    range = ('A'..letter).to_a + ('A'...letter).to_a.reverse
    diamond_width = max_width(letter)

    range.each_with_object([]) do |let, arr|
      arr << make_row(let).center(diamond_width)
    end.join("\n") + "\n"
  end

  private

  def self.make_row(letter)
    return "A" if letter == 'A'
    return "B B" if letter == 'B'

    letter + determine_spaces(letter) + letter
  end

  def self.determine_spaces(letter)
    all_letters = ['B']
    spaces = 1

    until all_letters.include?(letter)
      current_letter = all_letters.last
      all_letters << current_letter.next
      spaces += 2
    end

    ' ' * spaces
  end

  def self.max_width(letter)
    return 1 if letter == 'A'

    determine_spaces(letter).count(' ') + 2
  end
end
=end
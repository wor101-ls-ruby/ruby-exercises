=begin
**Problem**
Write a program to determine whether a triangle is equilateral, isosceles, or scalene.

Rules:
Explicit
  - Input: 3 integers or floats
  - Output: a string ('equilateral', 'isoceles', or 'scalene')
  - An equilateral triangle has all three sides the same length.
  - An isosceles triangle has exactly two sides of the same length.
  - A scalene triangle has all sides of different lengths.
  - all sides must be of length > 0
  - sum of the lengths of any two sides must be greater than or equal to the length of the third side.
Implicit
  - #kind public method returns string of triangle type
  - raise ArgumentError if inputs do not allow for a trianble to be made
  
**Examples / Test Cases**
triangle1 = Triangle.new(2, 2, 2)
triangle1.kind == 'equilateral'

triangle2 = Triangle.new(10, 10, 2)
triangle2.kind == 'isosceles'

triangle3 = Triangle.new(3, 4, 5)
triangle3.kind == 'scalene'



**Data Structures**
- input 3 integers or floats each representing a side
- output is a string of the triangle type ('equilateral', 'isoceles', or 'scalene')


**Algorithm**
- create Triangle class
  - @kind instance variable to hold type of triangle
  - #kind (public getter method)
  - #set_kind(private method)
  - #valid_triangle? (private method)
- test to confirm valid triangle #valid_triangle? (private)
  - check to see if all sides > 0 or else raise ArgumentError
  - check that 1st side + 2nd side is >= 3rd side &&
  - check that 2nd + 3rd side is >= 1st side &&
  - check that 1st + 3rd side is >= 2nd side or raise ArgumentError
- set type of triangle #set_kind (private method)
  - if all sides are equal then set @kind to equal 'equilateral'
  - if only 2 sides are equal then set @kind to equal 'isosceles'
  - else set @kind to equal 'scalene'
=end

class Triangle
  
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    @kind = set_kind(@sides) if valid_triangle(@sides)
  end
  
  def kind
    @kind
  end
  
  private
  
  def valid_triangle(sides)
    if sides.any? { |side| side <= 0 }
      raise ArgumentError
      return false
    elsif sides[0] + sides[1] < sides[2]
      raise ArgumentError
      return false
    elsif sides[0] + sides[2] < sides[1]
      raise ArgumentError
      return false
    elsif sides[1] + sides[2] < sides[0]
      raise ArgumentError
      return false
    end
    true
  end
  
  def set_kind(sides)
    if sides.uniq.size == 1
      @kind = 'equilateral'
    elsif sides.uniq.size == 2
      @kind = 'isosceles'
    else
      @kind = 'scalene'
    end
  end
  
end


triangle1 = Triangle.new(2, 2, 2)
p triangle1.kind == 'equilateral'

triangle2 = Triangle.new(10, 10, 2)
p triangle2.kind == 'isosceles'

triangle3 = Triangle.new(3, 4, 5)
p triangle3.kind == 'scalene'


# Launch School solution
=begin
class Triangle
  attr_reader :sides

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
    raise ArgumentError.new "Invalid triangle lengths" unless valid?
  end

  def kind
    if sides.uniq.size == 1
      'equilateral'
    elsif sides.uniq.size == 2
      'isosceles'
    else
      'scalene'
    end
  end

  private

  def valid?
    sides.min > 0 &&
    sides[0] + sides[1] >= sides[2] &&
    sides[1] + sides[2] >= sides[0] &&
    sides[0] + sides[2] >= sides[1]
  end
end

=end
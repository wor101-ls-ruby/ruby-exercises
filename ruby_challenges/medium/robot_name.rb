=begin
**Problem**
Write a program that manages robot factory settings.

Every once in a while, we need to reset a robot to its factory settings, which means that their name gets wiped. 
The next time you ask, it will respond with a new random name.

The names must be random; they should not follow a predictable sequence. 
Random names means there is a risk of collisions. 
Your solution should not allow the use of the same name twice when avoidable.

Rules:
Explicit
  - Input: 
  - Output: 
  - Names should be random
  - Names should not be duplicated (class variable to hold names?)
  - Namees should start with 2 capital letters and end with 3 digits
  - includes a #name instance method that returns a string of the robots name
  - includes a #reset instance method that resets the robots name
  
**Examples / Test Cases**



**Data Structures**


**Algorithm**


=end

class Robot
  @@robot_names =[]
  
  def initialize
    @name = generate_name
  end
  
  def name
    @name
  end
  
  def reset
    @@robot_names.delete(name)
    @name = generate_name
  end
  
  private
  
  def generate_name
    robot_name = ''
    loop do
      2.times { |_| robot_name += ('A'..'Z').to_a.sample }
      3.times { |_| robot_name += (1..9).to_a.sample.to_s }
      break unless @@robot_names.include?(robot_name)
      robot_name = ''
    end
    @@robot_names << robot_name
    @name = robot_name
  end
  
end

robot = Robot.new
puts robot.name
robot.reset
puts robot.name

# Launc shool solution

=begin
class Robot
  @@names = []

  def name
    return @name if @name
    @name = generate_name while @@names.include?(@name) || @name.nil?
    @@names << @name
    @name
  end

  def reset
    @@names.delete(@name)
    @name = nil
  end

  private

  def generate_name
    name = ''
    2.times { name << rand(65..90).chr }
    3.times { name << rand(0..9).to_s }
    name
  end
end
=end
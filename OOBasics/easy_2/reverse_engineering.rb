# Write a class that will dispaly:

# ABC
# xyz

class Transform
  
  def initialize(data)
    @data = data
  end
  
  def uppercase
    @data.upcase
  end
  
  def self.lowercase(data)
    data.downcase
  end
  
end






# when the following code is run:

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')

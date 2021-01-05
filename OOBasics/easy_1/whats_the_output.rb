class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

# name = 'Fluffy'
# fluffy = Pet.new(name)
# puts fluffy.name
# puts fluffy
# puts fluffy.name
# puts name

name = 42
fluffy = Pet.new(name) # a new object is created in memory when the Integer is converted to a string by the #to_s method and set equal to @name
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# What output does this code print? Fix this class so that there are no surprises waiting in store for the unsuspecting developer.

# Answer:
# Fluffy
# My name is FLUFFY
# FLUFFY
# FLUFFY

# What would happen in this case?
# 42
# My name is 42
# 42
# 43

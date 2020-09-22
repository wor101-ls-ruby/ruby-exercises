# variable_scope_numbers.rb

# excercises for variable scope involving numbers

# part 1
a = 7             # numbers in Ruby are IMMUTABLE

def my_value(b)
  b += 10         # reassignment operators do NOT mutate the caller but bind the variable to a NEW OBJECT
end

my_value(a)
puts a            # puts out '7' because the method does not mutate the original variable
puts " "                  
                  
# part 2
puts "PART 2"
puts 

a_2 = 7

def my_value_2(a_2)
  a_2 += 10           # once again does NOT mutate the caller. The name can be the same but represent different variables due to the limiting scope of the method
end

my_value_2(a_2)
puts a          
puts " "

# part 3
puts "PART 3"

a_3 = 7

def my_value_3(b_3)
  a_3 = B_3           # again the a_3 variable inside the method is NOT the same object as the one outside. The = operator does NOT mutate the caller but creates a new object that points to the original a_3
end

my_value(a_3 +5)
puts a_3              # puts out 7
puts " "

# part 6
# puts "PART 6"

# a_6 = 7

# def my_value_6(b_6)   # method definitions are self contained
  # b_6 = a_6 + a_6     # throws error message because a_6 is undefined. LOCAL variables in a method definition CANNOT reference outside variables
# end 

# my_value_6(a_6)
# puts a _6             # error

# part 7
puts "PART 7"

a_7 = 7

array_7 = [1, 2, 3]

array_7.each do |element|   #  block statements CAN access outside variables
  a_7 = element             # the original a_7 variable IS within the scope of the block statement the .each METHOD INVOCATION calls. It is therefore updated by the assignment operator
end 

puts a_7        # outputs 3
puts " "

# part 8
#puts "PART 8"

#array_8 = [1, 2, 3]

#array_8.each do |element|
 # a_8 = element             # variables created in a method invocation block are NOT accessible outside the block
#end

#puts a_8  #throws an error. 


# part 9
puts "PART 9"

z = 7
array_9 = [1, 2, 3]

array_9.each do [z]
  z += 1              # this should be shadowing a_9  but is not???
end

puts z                # why is this outputing 10????
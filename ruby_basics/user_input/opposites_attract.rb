# opposites_attract.rb

# request 2 integers from user, add together, display results. Insist one integer is postive and one negative. Order does not matter
# do not check for requirements until both integers entered, and start over if requirements not met

# use below method to validate input integers

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

integer1 = nil
integer2 = nil

loop do                                                       # the excercise used a method to take input and test for valid number or by using a loop within a loop
  puts "Please enter one positive and one negative integer"
  print "Please enter your first integer: "
  integer1 = gets.chomp                        # add first integer to first element of an array
  print "Please enter your second integer: "
  integer2 = gets.chomp                        # add second integer to second element of the array
  
  next if valid_number?(integer1) == false
  next if valid_number?(integer2) == false
  
  break if (integer1.to_i < 0 || integer2.to_i < 0) && (integer1.to_i > 0 || integer2.to_i > 0)
end

puts "#{integer1} plus #{integer2} equals #{integer1.to_i + integer2.to_i}"

  
  

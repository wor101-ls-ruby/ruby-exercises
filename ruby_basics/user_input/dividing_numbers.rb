# dividing_numbers.rb

# obtain two integers from the user, print result of dividing first by second. Second cannot be 0
# use  method to validate each number. returns 'true' if input string can be converted to integer and back to string without loss of info

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

number1 = nil
number2 = nil

loop do
  print "Please enter your first number: "
  number1 = gets.chomp
  break if valid_number?(number1) == true
  puts "Please enter a valid number"
end

loop do
  print "Please enter your second number: "
  number2 = gets.chomp
  break if valid_number?(number2) == true && number2.to_i != 0
  puts "Please enter a valid number that is not 0"
end

answer = number1.to_i / number2.to_i

puts "#{number1} divided by #{number2} equals #{answer}"



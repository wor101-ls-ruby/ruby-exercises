# launch_shool_printer_1.rb

# print 'Launch School is the best!' repeatedly until a certain number of lines obtained from the user are printed. Minimum of 3 lines

input = 0               # it is probably a best practice to initiatlize with a value of nil

loop do
  print "How many output lines do you want? Enter a number >=3: "

  input = gets.chomp.to_i               # don't need .chomp since this is being converted to an integer and the newline symbol would not be returned
  
  break if input >= 3
  puts "You must enter a number >=3."
end

input.times {puts "Launch School is the best!"}


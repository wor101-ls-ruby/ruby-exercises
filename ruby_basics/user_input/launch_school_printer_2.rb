# launch_school_printer_2.rb

# modify the previous program so it keeps repeating after each input/print iteration until user enters 'q' or 'Q'

input = nil               # it is probably a best practice to initiatlize with a value of nil

loop do
  print "How many output lines do you want? Enter a number >=3: "

  input = gets.chomp               # don't need .chomp since this is being converted to an integer and the newline symbol would not be returned
  
  break if input.downcase == 'q'
  
  next if input.to_i < 3 
  
  input.to_i.times {puts "Launch School is the best!"}
  
end


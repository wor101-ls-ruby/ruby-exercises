# print_something_2.rb

# as previous excercise but ask for 'y' or 'n'. throw error message and loop if anything other than 'y' or 'n'


loop do
  print "Do you want to print 'something'? Enter 'y' or 'n': "
  
  input = gets.chomp.downcase
  
  if input == "y" 
    puts "something"
    break
  elsif input == "n"
    break
  else
    puts "You must answer 'y' or 'n'."
  end
end


# the excercise answers the problem differently using an array and a initiating the input variable outside the loop

choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)                 # %w(y n) is shortcut syntax to represent Array. could also represent as just [;y', 'n']
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'
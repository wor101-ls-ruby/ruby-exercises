# loop_on_command.rb

# modify the loop so it stops iterating when the user enters 'yes'

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end
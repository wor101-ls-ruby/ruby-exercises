# print_something_1.rb

# write program that asks user if they want to print "something", print it if user answers 'y'. Otherwise print nothing

print "Do you want to print 'something'? Enter 'y' to do so: "
input = gets.chomp.downcase               # have to include .chomp to get rid o the newwline character or it would be included in inpput and input == 'y' would be false

puts "something" if input == "y"

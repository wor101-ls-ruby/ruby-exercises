# greeting.rb

# use a while loop to print "Hello!" twice

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0 
  greeting
  number_of_greetings -= 1
end

puts " "
puts "And now for the simpler way!"

2.times { greeting }
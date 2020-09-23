# even_or_odd.rb

# write a loop that prints the numbers 1-5 and whether that number is even or odd

count = 1

loop do
  puts "#{count} is odd!" if count.odd? == true
  puts "#{count} is even!" if count.odd? == false
  count += 1
  break if count > 5
end
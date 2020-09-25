# stoplight_1.rb

# Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
  when 'green' then puts "Go!" 
  when 'yellow' then puts "Slow oown!"
  when 'red' then puts "Stop!"
end
  
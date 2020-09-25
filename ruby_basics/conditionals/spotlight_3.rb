# spotlight_3.rb

# reformat following case statement so it only takes up 5 lines

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then  puts 'Go!'          #important to use proper spacing to improve readability
when 'yellow' then  puts 'Slow down!'
else                puts 'Stop!'
end
# ignoring_case.rb

## using the following code, compare the value of name with the string 'RoGeR' while ignoring the case of both strings. 
  # Print true if the values are the same; print false if they aren't. Then, perform the same case-insensitive comparison, 
  # except compare the value of name with the string 'DAVE' instead of 'RoGeR'.\
  
  name = 'Roger'
  
if name.casecmp?('RoGeR')       # can simplify this by just writing ( puts name.casecmp?('RoGeR') == 0 )  .casecmp?() returns 0 if true or -1,1 if false
  puts "true"
else
  puts "false"
end

if name.casecmp?('DAVE')
  puts "true"
else
  puts "false"
end

puts name.casecmp('DAVE') == 0
# catch_the_number.rb

# modify code so the loop stops if number is equal to or between 0 and 10

loop do
  number = rand(100)
  puts number
  if number < 11 # can also use .between(0,10)
    break
  end
end
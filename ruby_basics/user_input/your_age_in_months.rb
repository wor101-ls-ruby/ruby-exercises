# your_age_in_months.rb

# write a program tat asks the suer for their age in years and then converts it to months

print "Please enter your age in years: "

age = gets.chomp.to_i

age_in_months = age * 12

puts "You are #{age_in_months} months old."


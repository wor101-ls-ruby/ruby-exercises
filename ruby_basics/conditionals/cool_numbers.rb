# cool_numbers.rb

# Currently, "5 is a cool number!" is being printed every time the program is run. Fix the code so that "Other numbers are cool too!" gets a chance to be executed.

number = rand(10)

if number == 5                      # only one equal sign was being used and number was being reassigned the value of 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end
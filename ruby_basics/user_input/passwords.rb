# passwords.rb

# display welcome message after the user enters the correct pasword, where password is a string defined as a constant
# keep asking until user enters correct password

PASSWORD = "password"      # hehehehehehee :-)

loop do
  print "Please enter the password to proceed: "
  input = gets.chomp
  break if PASSWORD == input
  puts "Incorrect! You shall never guess my unbreakable password!"
end

puts "Noooo!!! How did you break my password?!"
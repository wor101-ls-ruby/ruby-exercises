# user_name_and_password.rb

# modify previous password.rb to also require a user name. need to solicit both password and user name, then validate both, and issue generic error if one or both are incorrect - does not tell user which

PASSWORD = "password"      # hehehehehehee :-)
USERNAME = "DarkHelmet"



loop do
  print "Please enter your username: "
  username = gets.chomp
  
  print "Please enter the password to proceed: "
  input = gets.chomp
  
  break if PASSWORD == input && USERNAME == username
  puts "Incorrect! Either your username or password is incorrect. You shall never gain access to the schwartz!!"
end

puts "Noooo!!! How did you break my password?!"
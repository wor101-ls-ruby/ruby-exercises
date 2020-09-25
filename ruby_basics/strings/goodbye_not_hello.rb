# goodbye_not_hello.rb

# invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

greeting = 'Hello!'
greeting.replace('Goodbye!')          # excercise uses greeting.gsub!('Hello', 'Goodbye')    - it replaces specific characters in a strubg
puts greeting
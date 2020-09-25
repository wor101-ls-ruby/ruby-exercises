# tricky_formatting.rb

# Using the following code, capitalize the value of state then print the modified value. Note that state should have the modified value both before and after you print it.

state = 'tExAs'

state.capitalize!   # use capitalize! so that it mutates the caller and permanently changes value of state

puts state
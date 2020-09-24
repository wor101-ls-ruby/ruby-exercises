# name_not_found.rb

# method that accepts one value and has default value of "bob"

def assign_name(name='Bob')
  return name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'


# variable_scope_strings.rb

# variable scope excercises for Strings

# excercise 1

a = "Xyzzy"

def my_value(b)
  b[2] = '-'      # this method mutates the caller. Strings are mutable UNLIKE numbers and 'b' points to the same data as 'a'
end 

def my_value_operator(c)
  c = "This shouldn't appear"
end 

def my_value_downcase(d)
  d.downcase!               # this should change the string to all lowercase charactesr
end


my_value(a)
puts a

my_value_operator(a)
puts a

my_value_downcase(a)
puts a
puts " "

# excercise 2
puts "PART 5"
a_2 = "Xyzzy"

def my_value_2(b_2)
  b_2 = "yzzyX"       # assignment operators NEVER change the value of an object but CREATE a NEW OBJECT
end 

my_value_2(a_2)
puts a_2              # puts out the original a_2 string "Xyzzy" because the assignment operator in the method created a NEW object that simply pointed to the original a_2. The assignent operator then changed the b_2 object and a_2 remained the same
puts " "

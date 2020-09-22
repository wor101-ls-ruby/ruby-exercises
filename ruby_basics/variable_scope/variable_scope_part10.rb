# variable_scope_part10.rb

a = 7

array = [1, 2, 3]

def my_value (ary)    # a Method Definition is limited in scope, variables inside can't access outside variables and vice versa
  ary.each do |b|     # variable inside a Method Invocation can access local variables outside the Method Invocations block, BUT because this Method Invocation is inside a Method Definition its variables are limited to previously definied variables inside the Mehtod Definition
    a += b            # the 'a' variable CANNOT access the previously defined 'a' variable as it was definied outsicde the scope of the Method Definitiion
  end
end 

my_value(array)
puts a 


# multiply_the_sum.rb

# write the methods so each output is true

def add (x, y)
  x + y
end

def multiply(x, y)
  x * y
end


puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36
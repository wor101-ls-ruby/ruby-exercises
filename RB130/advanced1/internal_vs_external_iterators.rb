# n this exercise, your task is to create a new Enumerator object. When creating a new Enumerator, you may define what values are iterated upon. 
# We'll want to create an Enumerator that can iterate over an infinite list of factorials. 
# Once you make this new Enumerator, test it out by printing out the first 7 factorial values, starting with zero factorial.

# More specifically, print the first 7 factorials by using an "External Iterator". 
# Once you have done so, see what happens if you print 3 more factorials (the results won't be correct). 
# Now, reset your Enumerator (use the rewind method). Finally, print 7 more factorials.

factorial = Enumerator.new do |y|
  a = 1
  b = 1
  
  loop do
    y << a
    a = a * b
    b += 1 
  end
  
end

def factor(y)
  return 1 if y == 0
  total = 1
  
  1.upto(y) do |x|
    total *= x
  end
  
  total
end

# External iterators
6.times { |number| puts "#{number}! == #{factorial.next}" }
puts "============================="
6.times { |number| puts "#{number}! == #{factorial.next}" }
puts "============================="
factorial.rewind
6.times { |number| puts "#{number}! == #{factorial.next}" }
puts "============================="

# (1..10).to_a.each { |int| puts factor(int) }


# Internal iterators
factorial.each_with_index do |fact, index|
  puts "#{index}! == #{fact}"
  break if index > 9
end
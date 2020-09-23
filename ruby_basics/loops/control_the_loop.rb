# control_the_loop.rb

# modify a loop so it iterates 5 times instead of just once

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1           # this adds 1 to iterations variable. Since this is NOT a Method Definition I can access local variables outside the block
  break if iterations >= 6 
 end
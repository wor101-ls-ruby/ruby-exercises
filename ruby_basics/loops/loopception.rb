# loopception.rb

# modify nested loops so they stop after each running for 1 iteration

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break                           # ends the inner loop after running 1 iteration
  end
  
  break                             # ends the outer loop after running 1 iteration
end

puts 'This is outside all loops.'
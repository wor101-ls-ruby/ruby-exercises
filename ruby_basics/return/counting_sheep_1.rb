# counting_sheep_1.rb

# what does this print

def count_sheep
  5.times do |sheep|    # Iterates the given block int times, passing in values from zero to int - 1.
    puts sheep          # this prints 0-4, the times method returns the initial value, in this case 5
  end
end

puts count_sheep      # prints the 5 that the .times method returns
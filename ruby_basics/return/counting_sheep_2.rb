# counting_sheep_2.rb

def count_sheep
  5.times do |sheep|
    puts sheep        # this should print 0-4
  end
  10
end

puts count_sheep      # this should print 10 as 10 was the last line of the method being called

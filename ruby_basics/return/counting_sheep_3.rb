# counting_sheep_3.rb

def count_sheep
  5.times do |sheep|
    puts sheep          # will pring 0-2
    if sheep >= 2
      return            # ends methods and returns nil
    end
  end
end

p count_sheep           # prints nil
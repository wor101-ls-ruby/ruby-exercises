# low_or_nothing.rb

# make select destructive to modify the original hash

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value| # the Hash:select! method is destructive and mutates the caller
                 value < 25
               end

p low_numbers
p numbers


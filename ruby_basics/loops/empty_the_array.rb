# empty_the_array.rb

# use loop to remove and print each name. stop once no more elements

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop            # .pop prints names last to first.  can use .shift method to print frst to last
  break if names.size == 0  # can use the .empty? method instead of seeing if it equals 0
end

# are_you_there?.rb

# print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.

colors = 'blue pink yellow orange boredom'

colors_array = colors.split   # turn into an array

colors_array.include?("yellow") ? (puts "true") : (puts "false")    # true

colors_array.include?("purple") ? (puts "true") : (puts "false")    # false

puts colors.include?('yellow')        # true - Doh! should have known String class includes a .includes? method

puts colors.include?('red')           # this will output true because red is in boredom...uf i add whitespace will be false

# pluralize.rb

# use Array#each to print the plural of each word in words.

words = 'car human elephant airplane'

# need to split words into array
# then need to affix an 's' to the end of each element
# then use .each method to print each element

words.split.each do |word|        
  puts word + 's'
end 

puts words.split.map { |word| word + 's' } # could use .map to mutate the caller and permanently plurarlize the elements. then could just start the line with puts


words.split.each { |word| puts word + 's' }
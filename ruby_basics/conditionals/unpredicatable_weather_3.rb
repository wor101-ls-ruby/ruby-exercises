# unpredicatable_weather_3.rb

# Write an if statement that prints "The sun is so bright!" if sun equals visible. Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals vi

sun = ['visible', 'hidden'].sample

puts "The clouds are blocking the sun!" unless sun == 'visible'       # the unless/if conditions add at the end of a statement are called modifiers

puts "The sun is so bright!" if sun == 'visible'
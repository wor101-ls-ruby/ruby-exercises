# random_sentence.rb

# write methods that return random values from the arrays
# write method that takes both values and returns it as a sentence in a string

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names_array)
  names_array.sample
end

def activity(activities_array)
  activities_array.sample
end

def sentence(name, activity)
  "#{name} enjoys #{activity}"
end

puts sentence(name(names), activity(activities))
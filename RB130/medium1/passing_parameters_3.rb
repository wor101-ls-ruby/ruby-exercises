items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end


# Fill out the following method calls for gather so that they produce the corresponding output shown in numbers 1-4 listed below:

puts "# 1" 
gather(items) do |*produce, wheat |
  puts produce.join(", ")
  puts wheat
end

  # output
  # Let's start gathering food.
  # apples, corn, cabbage
  # wheat
  # We've finished gathering!

puts ""
puts "# 2"
gather(items) do |apples, *c , wheat |
  puts apples
  puts c.join(", ")
  puts wheat
end

  # output
  # Let's start gathering food.
  # apples
  # corn, cabbage
  # wheat
  # We've finished gathering!
  
puts ""
puts "# 3"
gather(items) do |apples, *rest |
  puts apples
  puts rest.join(", ")
end

  # output
  # Let's start gathering food.
  # apples
  # corn, cabbage, wheat
  # We've finished gathering!
  
puts ""
puts "# 4"
gather(items) do |apples, corn, cabbage, wheat|
  puts apples + ', ' + corn + ', ' + cabbage + ', and ' + wheat
end

  # output
  # Let's start gathering food.
  # apples, corn, cabbage, and wheat
  # We've finished gathering!
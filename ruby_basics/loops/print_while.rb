# pring_while.rb

# using the while loop print 5 random numbers between 0 and 99

numbers = []
count = 0

while count < 5                           # can simplify by writing as while count.size < 5 and do away with the count
  random_number = Random.new              # creats a new Pseudo-Random Number Generator (PRNG). Dont need to do this can just use rand(100)
  
  numbers.push(random_number.rand(100))   # adds a random # greater than 0 and less than 100 to the end of numbers array

  count += 1                              # increases the count by 1
end

numbers.each { |number| puts number }
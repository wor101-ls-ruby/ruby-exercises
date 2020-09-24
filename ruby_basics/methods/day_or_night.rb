# day_or_night.rb

# write method that takes a boolean and prints "it's daytime!" if true and "It's nighttime!" if false
# pass daylight into method as argument

def time_of_day(time)
  if time == true
    puts "It's daytime!"
  elsif time == false
    puts "It's nighttime!"
  else
    puts "ERROR"
  end
end

daylight = [true, false].sample

time_of_day(daylight)
      
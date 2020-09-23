# thats_odd.rb

# modify a for loop so it only outputs 'i' if 'i' is an odd number

for i in 1..100
  if i % 2 != 0       # checks to see if 'i' is odd by checking to see if there is a remainder after dividing by 2
    puts i            # prints the number if it is odd ////could have just use the .odd? method apparently
  else
    next              # if i % 2 == 0 then skips to the next iteration
  end
end
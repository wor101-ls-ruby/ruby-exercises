# are_we_the_same?.rb

# compare array1 and array2 and print true or false based on whether they match

array1 = [1, 5, 9]
array2 = [1, 9, 5]

array1 == array2 ? (puts "true") : (puts "false")    # should be false?


puts array1 == array2       # this is the simpler way since the conditional statement will return a true or false value which will then print

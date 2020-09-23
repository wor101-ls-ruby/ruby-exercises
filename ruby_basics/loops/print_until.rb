# print_until.rb

# given the below array, use an until loop to print each number

numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size     # loops until count is the same as the size of the array
  puts numbers[count]           # uses the count as the index of the array to print
  count += 1                    # increases the count by 1
end


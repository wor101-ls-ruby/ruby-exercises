# reading_error_messages.rb

# what errros does it raise for the given examples and what do they mean?

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

find_first_nonzero_among(0, 0, 1, 0, 2, 0)    # the method  can only accept one parameter and this is trying to pass multiple parameters
find_first_nonzero_among(1)                   # this passes one parameter but it is an integer. the method uses Array#each method and cannot do so on an integer
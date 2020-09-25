# quote_confusion.rb

# modify so double quotes are used instead of single-quotes

puts "It's now 12 o'clock."       # originally puts 'It\'s now 12 o\'clock.'
                                  # single quotes DO NOT allow for escape sequences like \n


puts %Q(It's now 12 o'clok.) # alternative to double-quoted strings. There's also an alternative for single-quoted strings: %q
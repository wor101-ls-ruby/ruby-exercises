# sleep_alert.rb

# write an if statemenbt that returns "Be productive!" if status equals 'awake' and returns 'Go to sleep!' othreweise.
# then assign the return value of theifstatement to a variable and print that variable

status = ['awake', 'tired'].sample



instruction = if status == 'awake'
                "Be productive!"
              else
                "Go to sleep!"
              end

puts instruction
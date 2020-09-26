# weather_forecast.rb

## Our predict_weather method should output a message indicating whether a sunny or cloudy day lies ahead. 
 # However, the output is the same every time the method is invoked. Why? Fix the code so that it behaves as expected.

 def predict_weather
  sunshine = ['true', 'false'].sample     # sets sunshine as a string and strings always evalute as true

  if sunshine == 'true'
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

puts predict_weather
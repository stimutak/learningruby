def convert_to_celsius (temp_f = 32)
  (5.0 / 9) * (temp_f - 32) 
end

puts 'Please enter a temperature in degrees Fahrenheit:'
STDOUT.flush
temp_f = gets.to_f
temp_c = convert_to_celsius(temp_f)
puts "#{temp_f} degrees Fahrenheit is #{"%.2f" % temp_c} degrees Celsius"







# def cleanup (value)
#   value = format("%.2f", value).to_s
#   #value = "%.2f" % value
#   #value.to_s
# end
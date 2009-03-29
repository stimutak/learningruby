# 2009-03-25
#----------------------------------
# Exercise1.
#----------------------------------
my_string = 'Hello Ruby World'
def my_string 
  'Hello World'
end
puts my_string    # => "Hello Ruby World"
# my_string has 2 different scopes here--
# the scope from which we call 'puts' is the outermost 'main' scope, 
# in which my_string is the string literal 'Hello Ruby World'
# 
# in addition, my_string is a string literal, and my_string() is a method.
# the puts method does not call the method-- it is passed the string as an arg.
#
#
# if one wanted to run the method, what would the ruby way be?
# puts my_string()       ?

#----------------------------------
# Exercise2.
#----------------------------------
def convert (temp_f = 0)
  temp_c = (temp_f - 32.0) * 5/9
  temp_c = format("%.2f", temp_c).to_s
  temp_f = format("%.2f", temp_f).to_s
  puts "#{temp_f} degrees Fahrenheit is #{temp_c} degrees Celsius"
end

convert 
convert -12
convert 98.6
convert 100

#----------------------------------
# Exercise2.Redux
#----------------------------------

def convert2 (temp_f = 0)
  (5.0 / 9) * (temp_f - 32.0) #if temp_f =~ /-?\d*\.?\d*/
end

#puts convert2('9') 
puts convert2(-12)
puts convert2(98.6)
puts convert2(100)

# Real_Number = /^-?\d+\.?\d*$/

#----------------------------------
# Exercise3.
#----------------------------------
arg1="Satish", arg2="Sunil", arg3="Marcos"
puts "#{arg1}, #{arg2}, #{arg3}."
# =>SatishSunilMarcos, Sunil, Marcos.

# if multiple assignments are done on the same line, they must be separated by semi-colons (;)
# arg1 must be appending each additional string literal as it evaluates the line, but then why wouldn't arg2 == SunilMarcos.?


#----------------------------------
# Exercise4.
#----------------------------------
# see p006ftoc.rb

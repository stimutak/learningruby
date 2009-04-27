####################
# exercise1:
####################
s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

# s.each_line { |line| puts "Line : " + line }
# def line_seperator (line)
#   line_array = line.each_line { |line| line }
#   line_array.each do 
#     puts "Line : " + line_array.each_index { |i| puts i }
#   end
# end
# line_seperator (s)

s.each_with_index { |line, index| puts "Line #{index + 1}: #{line}" }
#s.each_with_index { |line, index| print "Line #{index + 1}: " + line }
#s.each_with_index { |line, index| p "Line #{index + 1}: " + line }

# from the forum
s.split("\n").each_with_index do |line, index|
  index +=1
  puts "Line #{index} :#{line}"
end

# another
def split_string(str)
  result = ''
  str.each_with_index do |line, index|
    result << "Line #{index+1}: #{line}"
  end
  result
end
 
puts split_string(s)

# again
s.each_with_index{|str,index| puts "Line #{index.next}: #{str}"}

####################
# exercise2:
####################
def mtdarry
 10.times do |num|
   puts num
 end
end

mtdarry #puts 0..9
puts mtdarry #puts 0..10

# the diff is that the second call prints the return value (which is 10)

####################
# exercise3:
####################

# see p016leapyear.rb

####################
# exercise4:
####################

# see p017leapyearmtd.rb 

####################
# exercise5:
####################
# brainteaser: a student wrote the first program:
require 'benchmark'
 
Benchmark.bm do |this|
  this.report('original:') do
    i = x = y = 0
    while (i < 1000000)
     i += 1
     x += 1
     y += 1
     tmp = x * y
     puts tmp if (i > 100000 && i < 100002)
    end
  end
  
  this.report('mine1:') do
    i = x = y = 0
    while (i < 100001)
      i = x = y += 1
    end
    puts x * y
  end
  
  this.report('mine2:') do
    i = x = y = 100001
    puts x * y
  end
end

####################
# exercise6:
####################
# the following program:
title = 'Programming Ruby'
price = 3_990
puts '"#{title}" is #{price} yen.'
#results in
# => "#{title}" is #{price} yen.
# due to the use of the outermost ' '



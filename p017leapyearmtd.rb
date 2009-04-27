=begin
  puts 'Please enter a year:'   
  STDOUT.flush
  year = gets.to_i
  if ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)
    puts year.to_s + ' is a leap year!!'
  else 
    puts year.to_s + ' is not a leap year'
  end
=end

def leap_year? (year)
  ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)
end

def minutes_in_year (year)
  minutes = 60
  hours = 24
  #days = 0
  #leap_year?(year) ? days = 366 : days = 365
  days = leap_year?( year) ? 366 : 365
  days * hours * minutes
end

puts 'Leap years:'
puts "2000 contained #{minutes_in_year(2000)} minutes"
puts "2004 contained #{minutes_in_year(2004)} minutes"
puts 'Non-leap years:'
puts "1900 contained #{minutes_in_year(1900)} minutes"
puts "2005 contained #{minutes_in_year(2005)} minutes"



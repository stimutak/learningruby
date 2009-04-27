=begin
if year modulo 400 is 0 then leap
 else if year modulo 100 is 0 then no_leap
 else if year modulo 4 is 0 then leap
 else no_leap

A more direct algorithm (terms may be grouped either way):

function isLeapYear (year):
 if ((year modulo 4 is 0) and (year modulo 100 is not 0)) or (year modulo 400 is 0)
  then true
 else false
=end

puts 'Please enter a year:'   
STDOUT.flush
year = gets.to_i
if ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)
  puts year.to_s + ' is a leap year!!'
else 
  puts year.to_s + ' is not a leap year'
end

   
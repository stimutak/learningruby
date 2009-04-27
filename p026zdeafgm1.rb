# p026zdeafgm1.rb

# date:
# date = rand(20) + 1930
# puts date

def get_input
  STDOUT.flush
  gets.chomp
end

def grandma2
  input = get_input
  while input != 'BYE'
    puts "You enter: #{input}"
    date = rand(20) + 1930
    (input == input.upcase) ? (puts "Grandma responds: NO, NOT SINCE #{date}!") : (puts 'Grandma responds: HUH?! SPEAK UP, SONNY!')
    input = get_input
  end
end

grandma2

# note the loop do end construct and the .eql? method
# loop do
#   print "\nSay something: "
#   STDOUT.flush
#   talk = gets.chomp
#   if talk.eql?('BYE')
#     exit
#   end
#   if talk.eql?(talk.upcase)
#     puts "NO, NOT SINCE 19#{30+rand(20)}."
#   else
#     print 'HUH?! SPEAK UP, SONNY!'
#   end
# end

# note the 'end until input == "BYE"
# begin
#   STDOUT.flush
#   input = gets.chomp
#   if (input.upcase == input)
#     puts "NO, NOT SINCE #{1930 + rand(21)}"
#   else
#     puts "HUH?! SPEAK UP, SONNY!"
#   end
# end until input == "BYE"

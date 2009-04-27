####################
# exercise1:
####################

# scope -- first prints as a result of the method method call, then prints value of a

####################
# exercise2:
####################

# to_s will convert symbols to strings, but to_str will not
# if you want something to look like a string, use to_s. If you want something to act like a string, use to_str.
# http://groups.google.com/group/ruby-talk-google/browse_thread/thread/360cd68a6120a826

puts :oliver.to_s.class
puts 'oliver'.to_str.class

####################
puts 'exercise3:'
####################

# File.readlines('plainTxt.txt', 'r+') do |f1|
#   while line = f1.gets
#     a = line.split
#     a.each do |item|
#       item == 'word'? item.replace('inserted word') : item
#       puts 'item:' + item
#     end
#     puts line
# #??????????????????????????????????????????????
#   end
# end

# a = File.readlines('plainTxt.txt')
# b = File.open('plainTxtReplaced.txt', 'w') 
# a.each do |line|
#   line.sub('word', 'FART') 
#   b.write(line)
# end
# b.close

input = File.read('plainTxt.txt').sub('word', 'inserted word')
output = File.open('plainTxtReplaced.txt', 'w')
output.write(input)
output.close

####################
puts 'exercise4:'
####################

puts Dir.pwd
puts Dir.mkdir('tmp')
puts Dir.chdir('tmp')
puts Dir.pwd
puts Dir.chdir('..')
puts Dir.pwd
puts Dir.rmdir('tmp')


####################
# exercise5:
####################

# what will not be displayed:
# a, e, f

####################
puts 'exercise6:'
####################

# see p021rangesex.rb
s = 'key=value'
s1, s2 = s.split('=')
puts "s1 = #{s1}  s2 = #{s2}"

####################
# exercise7:
####################

# see p026zdeafgm1.rb

####################
# exercise8:
####################

# see analyzer.rb

####################
puts 'exercise9:'
####################

# Write a Ruby program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz". Discuss this in the FizzBuzz Forum.

def fizz_buzz
  (1..100).each do |num|
    fizz = num % 3
    buzz = num % 5
    if (fizz == 0) && (buzz == 0)
      puts 'FizzBuzz'
    elsif (fizz == 0)
      puts 'Fizz'
    elsif (buzz == 0)
      puts 'Buzz'
    else puts num
    end
  end
end

fizz_buzz

# flexibile using collections:
# def check_number(i)
#   s = ''
#   s = 'Fizz' if i % 3 == 0
#   s << 'Buzz' if i % 5 == 0
#   s == '' ? i : s
# end
#  
# def fizzbuzz(range)
#   a = range.to_a
#   a.collect {|i| check_number(i)}
# end
#  
# puts fizzbuzz(1..100)

####################
# exercise10:
####################

s = 'the sentence i want to reverse'
puts s.split.reverse.join(' ')

####################
# exercise11:
####################

# see p020arraysum.rb

####################
# exercise12:
####################

# see p021oddeven.rb

####################
puts 'exercise13:'
####################

quiz = [0,0,0,1,0,0,1,1,0,1]
def took_quiz?(array)
  didnot, total = 0, 0
  array.each do |num|
    num == 0 ? didnot += 1 : didnot
    total += 1
  end
  puts "Number of participants who did not attempt Quiz 1 is #{didnot} out of #{total} total participants"
end

puts took_quiz?(quiz)

# also

completed = 0
quiz.each do |attempt|
  completed += 1 unless attempt.zero?
end
puts "Quiz 1 is #{quiz.size - completed} out of #{quiz.size}"
    
# also:
s = quiz.inject(0) { |sum, elem| sum += 1-elem }
puts "The number of participants who did not attempt Quiz 1 is #{s} out of #{quiz.length} total participants."    
    
# also
QUIZ_TAKEN_ARR = [1]
puts "The number of participants who did not attempt Quiz 1 is #{(quiz - QUIZ_TAKEN_ARR).size} out of #{quiz.size} total participants."


####################
# exercise14:
####################

#record = {:name, 'Satish', :email, 'mail@satishtalim.com', :phone, '919371006659'}
record = {:name => 'Satish', :email => 'mail@satishtalim.com', :phone => '919371006659'}
puts record[:name]

####################
# exercise15:
####################

# scope changed to always local for blocks in 1.9

####################
# exercise16:
####################

h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }

puts h.member?("Matz")    #f
puts h.member?("Python")  #t
puts h.include?("Guido")  #f
puts h.include?("Ruby")   #t
puts h.has_value?("Larry")#t
#puts h.exists?("Perl")    #undefined

####################
# exercise17:
####################

for i, j in [[1, 2], [3, 4], [5, 6]]
p [i, j]
end
# answer 3:
# => [1,2]
# => [3,4]
# => [5,6]

####################
# exercise18:
####################
# ascending sort by string length: answer=> 4, 6
a = ["Magazine", "Sunday", "Jump"]
puts a.sort { |l, r| l.length <=> r.length } 
puts a.sort_by { |s| s.length }


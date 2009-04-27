# p021oddeven.rb
# see exercise4

collection = [12, 23, 456, 123, 4579] 
def odd_even(array)
  array.each do |num|
    state = num % 2 == 0 ? 'even' : 'odd'
    puts "#{num} is #{state}"
  end
end

odd_even(collection)

# also interesting:
def odd?
  self % 2 > 0
end

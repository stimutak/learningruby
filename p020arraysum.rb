# p020arraysum.rb
# see exercise4

collection = [1, 2, 3, 4, 5]
def array_sum(array)
  sum = 0
  array.each do |i| 
    sum += i
  end
  sum
end

puts array_sum(collection)


# or

puts collection.inject {|sum, num| sum += num}

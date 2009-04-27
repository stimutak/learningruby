# p021ranges.rb
=begin
  Sequences have a start point, an end point, and a way to
  produce succesive values in the sequence
  In Ruby, sequences are created using the ".." and "..."
  range operators.
  The two dot form creates an inclusive range.
  the three dot form createsa range that excludes the specified
  high value.
  The sequence 1..100000 is held as a Range object
=end
digits = -1..9
puts digits.include?(5)
puts digits.min
puts digits.max
puts digits.reject {|i| i < 5 }


# === equality case operator
puts (1..10) === 5
puts (1..10) === 15
puts (1..10) === 3.14159
puts ('a'..'j') === 'c'
puts ('a'..'j') === 'z'
# p024proccall.rb
# using Kernel.lambda to make a block act like an object(?)

# Blocks are not objects
# They can be converted into objects of class Proc by calling lambda method
prc = lambda {puts 'Hello'}
# method call invokes the block
prc.call

# Another example
toast = lambda do
  puts 'Cheers'
end
toast.call

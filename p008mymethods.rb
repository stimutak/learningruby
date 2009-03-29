# p008mymethods.rb
=begin
- A method returns the value of the last line
- Methods that act as queries are often named with a trailing ?
- Methods that are "dangerous," pr modify the receiver, might be named with a trailing ! (Bang Methods)
=end
def hello
  puts 'Hello'
end
hello

# method with an arg - 1
def hello1(name)
  puts 'Hello ' + name
  return 'success'
end
puts(hello1('oliver'))

# method with an arg - 2
def hello2 name2
  puts 'Hello ' + name2
  return 'success'
end
puts(hello2 'delano')
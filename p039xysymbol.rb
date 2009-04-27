# p039xysymbol
know_ruby = :yes
if know_ruby == :yes
  puts 'You are a Rubyist'
else
  puts 'Start learning Ruby'
end

# can use strings instead of symbols, but less efficient:
know_ruby = 'yes'
if know_ruby == 'yes'
  puts 'You are a Rubyist'
else
  puts 'Start learning Ruby'
end


# also can convert from one to the other:
puts "string".to_sym.class  # => Symbol
puts :symbol.to_s.class     # => String

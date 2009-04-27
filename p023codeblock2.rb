# p023codeblock2
# You can provide parameters to the call to yield:
# these will be passed to the block
def call_block
  yield('hello', 99)
end
call_block {|str, num| puts str + ' ' + num.to_s}

# block_given? returns true if yield would execute a block in the given context
def try
  if block_given?
    yield
  else
    puts "no block"
  end
end
try
try { puts "hello" }
try do puts "hello" end
  
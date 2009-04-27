# p032mystring.rb
# adding to the String class

class String
  def writesize
    self.size
  end
end
size_writer = "Tell me my size!!"
puts size_writer.writesize


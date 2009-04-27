# p012zmm
# method_missing method usage

class Dummy
  def method_missing(m, *args)
    puts "There's no method called #{m} here -- please try again."
  end
end
Dummy.new.anything
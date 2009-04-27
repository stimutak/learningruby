# p031motorcycletest.rb
# testing the require of p030

require 'p030motorcycle'
m = MotorCycle.new('Yamaha', 'red')
m.startEngine

class MotorCycle
  def dispAttr
    puts 'Color of motorcycle is ' + @color
    puts 'Make of motorcycle is ' + @make
  end
end
m.dispAttr
m.startEngine
puts self.class
puts self

# Exercise1
class Dog 
  def initialize(name)
    @name = name
  end
  
  def bark
    puts "Woof Woof!!!!"
  end
  
  def eat
    puts "num nums!!!"
  end
  
  def chase_cat
    puts "I'm gonna get you cat!"
  end
end

d = Dog.new('lassie')
d.bark
d.eat
d.chase_cat

# Exercise2
class Rectangle
  def initialize(length, width)
    @length = length
    @width = width
  end
  def area
    @length * @width
  end
  def perimeter
    (@length * 2) + (@width * 2)
  end
end

r = Rectangle.new(23.45, 34.67)
puts 'Area is = ' + r.area().to_s
puts 'Perimeter is = ' + r.perimeter.to_s

# Exercise3

#see p026zdeafgm2.rb

# Exercise4

# see p028swapcontents.rb

# Exercise5
#class method definition
class GoodDog
  # getter and setter methods auto created
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w

  end

  def speak
    # goes through the name getter method defined by attr_accessor instead of being accessed directly
    "#{name} says Arf!"
  end

  # Have to do self or there's no context for ruby - just creates a new local variable w/o self
  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end

  def self.what_am_i
    "I'm a good dog class!"
  end

  def to_s
    "This dog's name is #{name}"
  end
end

sparky = GoodDog.new('Sparky', '12 inches' ,'10 lbs')
puts "#{sparky}"
# good_dob.rb

# Ruby convention: name getter and setter methods using same name as instance var being referenced
# class GoodDog
#   def initialize(name)
#     # INSTANCE VARIBALE
#     @name = name
#   end

#   def name
#     @name
#   end

#   # Syntactic sugar - just imagine you have method called 'set_name='
#   def name=(n)
#     @name = n
#   end

#   def speak
#     "#{@name} says Arf!"
#   end
# end

class GoodDog
  # getter and setter methods auto created
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
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
end

sparky = GoodDog.new('Sparky', '12 inches' ,'10 lbs')
puts sparky.info

sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info
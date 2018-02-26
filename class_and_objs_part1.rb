# good_dob.rb

# Ruby convention: name getter and setter methods using same name as instance var being referenced
class GoodDog
  def initialize(name)
    # INSTANCE VARIBALE
    @name = name
  end

  def name
    @name
  end

  # Syntactic sugar - just imagine you have method called 'set_name='
  def name=(n)
    @name = n
  end

  def speak
    "#{@name} says Arf!"
  end
end

sparky = GoodDog.new('Sparky')
sparky.speak
puts sparky.name
sparky.name = 'Spartacus'
puts sparky.name
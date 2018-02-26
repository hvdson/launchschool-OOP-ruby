# # ruby naming convention - use "able" suffix for verbs
# module Walkable
#   def walk
#     "I'm walking"
#   end
# end

# module Swimmable
#   def swim
#     "I'm swimming"
#   end
# end

# module Climbable
#   def climb
#     "I'm Climbing"
#   end
# end

# class Animal
#   include Walkable
  
#   def speak
#     "I'm an animal and I speak!"
#   end
# end

# class Fish < Animal
#   include Swimmable
# end

# class Mammal < Animal
# end

# class GoodDog < Mammal
#   include Swimmable
#   include Climbable
# end

# class Cat < Mammal
# end

# sparky = Dog.new
# nemo = Fish.new
# paws = Cat.new

# puts Animal.ancestors

# fido = Animal.new
# fido.speak

#------- MORE MODULES -------#

# module Mammal
#   class Dog
#     def speak(sound)
#       p "#{sound}"
#     end
#   end

#   class Cat
#     def say_name(name)
#       p "#{name}"
#     end
#   end

#   def self.some_out_of_place_method(num)
#     num ** 2
#   end
# end

# # access classes in a module 
# buddy = Mammal::Dog.new
# kitty = Mammal::Cat.new
# # can also access method with :: but using dot notation is convention
# value = Mammal.some_out_of_place_method(4)
# puts value

# buddy.speak('Arf!')
# kitty.say_name('kitty')

#------- Private, protected and public -------#

# class GoodDog
#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(n, a)
#     self.name = n
#     self.age = a
#   end

#   private

#   def human_years
#     age * DOG_YEARS
#   end
# end

# sparky = GoodDog.new("sparky", 4)
# sparky.human_years

# class Animal
#   def a_public_method
#     "Will this work?" + self.a_protected_method
#   end

#   protected
#   def a_protected_method
#     "yes I'm protecc"
#   end
# end

# fido = Animal.new
# fido.a_public_method

class Parent
  def say_hi
    p "Hi from parent"
  end
end

class Child < Parent
  def say_hi
    p "Hi from child"
  end
end

child = Child.new
child.say_hi

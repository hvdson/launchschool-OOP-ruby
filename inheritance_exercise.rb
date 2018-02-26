module Skrtable
  def skrt
    "I'm skrting over here"
  end
end


class Vehicle

  @@number_of_vehicles = 0

  attr_accessor :colour
  attr_reader :year
  attr_reader :model

  def initialize(year, colour, model)
    @year = year
    @colour = colour
    @model = model
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def self.number_of_vehicles
    puts "This program has created #{number_of_vehicles} vehicles"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate up to #{number} mph"
  end

  def brake(number)
    @current_speed -= number
    puts "you press the brake and slow down to #{number} mph"
  end

  def current_speed
    puts "you are going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(colour)
    self.colour = colour
    puts "your new car colour is #{colour}"
  end

  def age
    "Your #{self.model} is #{get_age} years old. "
  end

  private

  def get_age
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  include Skrtable
  def to_s
    "My car is a #{self.colour} #{self.year} #{self.model}"
  end
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  def to_s
    "My truck is a #{self.colour} #{self.year} #{self.model}"
  end
end

# puts MyCar.ancestors
# puts MyTruck.ancestors
# puts Vehicle.ancestors

# lumina = MyCar.new(1997, 'chevy lumina', 'white')
# lumina.speed_up(20)
# lumina.current_speed
# lumina.speed_up(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.brake(20)
# lumina.current_speed
# lumina.shut_down
# MyCar.gas_mileage(13, 351)
# lumina.spray_paint("red")
# puts lumina

raptor = MyCar.new(1999, 'blue', 'ford raptor')
puts raptor.age
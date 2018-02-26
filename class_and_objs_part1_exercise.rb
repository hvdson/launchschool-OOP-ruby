# --- EXERCISE 1 --- #
# class MyCar

#   def initialize(year, colour, model)
#     @year = year
#     @colour = colour
#     @model = model
#     @current_speed = 0
#   end

#   def speed_up(number)
#     @current_speed += number
#     puts "You push the gas and accelerate up to #{number} mph"
#   end

#   def brake(number)
#     @current_speed -= number
#     puts "you press the brake and slow down to #{number} mph"
#   end

#   def current_speed
#     puts "you are going #{@current_speed} mph."
#   end

#   def shut_down
#     @current_speed = 0
#     puts "Let's park this bad boy!"
#   end
# end


# --- EXERCISE 2 --- #

class MyCar

  attr_accessor :colour
  attr_reader :year

  def initialize(year, colour, model)
    @year = year
    @colour = colour
    @model = model
    @current_speed = 0
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

end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed
lumina.colour = 'black'
puts lumina.colour
puts lumina.year
lumina.spray_paint("dank")






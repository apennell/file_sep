# links us to the car model so that we can use the attributes from that when creating a convertible instance
require_relative 'car.rb'

# create Convertible class
class Convertible < Car
  # makes color attribute with read only
  attr_reader :color

  # initialize instance of convertible and give it make and model attributes from the super Car class, as well as the new color attribtue
  def initialize(make,model,color)
    # takes make and model attributes from super Car model
    super(make,model)
    @color = color
    @open = false
  end

  # toggles @open state 
  def convert
    @open = !@open
  end

  def go_to_speed(speed)
    puts "Top coming down"
    # runs convert method to toggle top to open 
    convert
    # Car's go_to_speed method
    super(speed)
  end
end

# links us to the car model so that we can use the attributes from that when creating a fast car instance
require_relative 'car.rb'

# create FastCar class
class FastCar < Car
  # makes color and spoiler attributes with read only
  attr_reader :color, :spoiler

  # initialize instance of FastCar and give it make and model attributes from the super Car class, as well as the new color and spoiler attribtue
  def initialize(make,model,color,spoiler)
    # takes make and model attributes from super Car model
    super(make,model)
    @color = color
    @spoiler = spoiler
    @pulled_over = false
  end

  # creates police method
  def police
    # sets pulled over to true, then runs a litte convo with puts
    @pulled_over = true
    puts "Do you know how fast you were going?"
    puts "No officer..."
    # converts speed to string and adds to string to puts
    puts @speed.to_s + " miles per hour, you nut!"
  end

  # creates go_to_speed method
  def go_to_speed(speed)
    # Car's go_to_speed method; sets speed
    super(speed)
    # if speed is greater than 95, run police method
    if speed > 95
      police
    # if speed isn't greater than 95, return the speed
    else
      @pulled_over = false
      puts speed
    end
  end
end
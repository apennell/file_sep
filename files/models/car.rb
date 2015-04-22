# create Car class
class Car
  # makes make and model attributes that can be read and written
  attr_accessor :make, :model

  # initialize instance of car and gives it make and model attributes
  def initialize(make,model)
    @make = make
    @model = model
  end

  # makes a speed attribute, which is set to the given speed
  def go_to_speed(speed)
    @speed = speed
  end
end

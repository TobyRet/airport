require_relative 'weather'

class Airport

  include Weather

  DEFAULT_CAPACITY = 100

  attr_accessor :capacity

  def initialize(options ={})  
    @capacity = options[:capacity] || DEFAULT_CAPACITY
  end

  def planes
    @planes ||= []
  end

  def planes_count
<<<<<<< HEAD
    @planes.count
  end

  def dock(plane)
    planes << plane
  end

  def undock(plane)
    planes.delete(plane)
=======
    planes.count
  end

  def permission_to_land(plane)
    raise "Airport full. Permission to land denied." if full?
    planes << plane if weather_conditions == :sunny
  end

  def permission_to_take_off(plane)
    planes.delete(plane) if weather_conditions == :sunny
  end

  def full?
    planes_count == @capacity
>>>>>>> refactor
  end

end
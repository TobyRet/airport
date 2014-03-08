class Airport

  DEFAULT_CAPACITY = 100

  attr_accessor :capacity

  def initialize(options ={})  
    @capacity = options[:capacity] || DEFAULT_CAPACITY
  end

  def planes
    @planes ||= []
  end

  def planes_count
    planes.count
  end

  def permission_to_land(plane)
    raise "Airport full. Permission to land denied." if full?
    planes << plane
  end

  def permission_to_take_off(plane)
    planes.delete(plane)
  end

  def full?
    planes_count == @capacity
  end

end
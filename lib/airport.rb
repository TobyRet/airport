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
    @planes.count
  end

  def dock(plane)
    planes << plane
  end

end
class Airport

  DEFAULT_CAPACITY = 100

  attr_accessor :capacity

  def initialize(options ={})  
    @capacity = options[:capacity] || DEFAULT_CAPACITY
  end

end
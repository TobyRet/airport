class Plane

  attr_accessor :is_flying

  def initialize
    @is_flying = true
  end

  def take_off
    @is_flying = true
  end

  def land
    @is_flying = false
  end

  def status
    self.is_flying ? :flying : :landed
  end

end
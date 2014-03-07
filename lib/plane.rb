class Plane

  attr_accessor :is_flying

  def initialize
    @is_flying = false
  end

  def fly
    @is_flying = true
  end

  def take_off(weather_condition)
    self.fly unless weather_condition == "stormy"
  end

  def status
    self.is_flying ? "Flying" : "Landed"
  end

end
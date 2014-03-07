class Plane

  attr_accessor :is_flying

  def initialize
    @is_flying = false
  end

  def fly
    @is_flying = true
  end

  def take_off(weather_condition)
    self.fly if weather_condition == "sunny"
  end

  def land(weather_condition)
    self.is_flying = false if weather_condition == "sunny"
  end

  def status
    self.is_flying ? "Flying" : "Landed"
  end

end
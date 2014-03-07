require_relative 'weather'

class Plane

  include Weather

  attr_accessor :is_flying

  def initialize
    @is_flying = false
  end

  def fly
    @is_flying = true
  end

  def take_off
    self.fly if self.condition? == :sunny
  end

  def land(weather_condition)
    self.is_flying = false if self.weather_condition? == :sunny
  end

  def status
    self.is_flying ? :flying : :landed
  end

  def weather_condition? 
    case rand(100) + 1
      when  1..90 then :sunny
      when 90..100 then :stormy
    end
  end

end
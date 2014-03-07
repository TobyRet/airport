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

  def status
    self.is_flying ? :flying : :landed
  end

end
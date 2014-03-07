require './lib/plane.rb'

describe Plane do

  let(:plane) {Plane.new}
  
  it "should not be flying after we create it" do
    plane.is_flying
    expect(plane.is_flying).to be_false
  end

  it "can fly" do
    plane.fly
    expect(plane.fly).to be_true
  end

  it "can take off in sunny weather" do
    sunny_weather = double(:weather, {:sunny => true})
    plane.take_off(sunny_weather)
    expect(plane.take_off(sunny_weather)).to be_true
  end


end

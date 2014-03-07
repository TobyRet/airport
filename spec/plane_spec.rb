require './lib/weather'
require './lib/plane'

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

  # Test plane with single weather condition

  xit "can take off in sunny weather" do
    plane.take_off(:sunny)
    expect(plane.is_flying).to be_true
  end

  xit "can't take off in stormy weather" do
    plane.take_off(:stormy)
    expect(plane.is_flying).to be_false
  end

  xit "can land in sunny weather" do
    plane.fly
    plane.land(:sunny)
    expect(plane.is_flying).to be_false
  end

  xit "can't land in stormy weather" do
    plane.fly
    plane.land(:stormy)
    expect(plane.is_flying).to be_true
  end

  # Test plane with random weather condition (Weather module generates random weather condition)

  it "can take off in sunny weather" do
    weather = double(:weather, {:condition? => :sunny})
    plane.fly
    expect(plane.is_flying).to be_true
  end

  it "can provide its current status (flying or landed)" do
    plane.status
    expect(plane.status).to eq(:landed)
  end

end

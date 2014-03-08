require './lib/airport'
require './lib/plane'
require './lib/weather'

describe Airport do 

  let(:airport) { Airport.new }
  let(:plane) { Plane.new }

  it "should allow setting default capacity on initialising" do
    expect(airport.capacity).to eq(100)
  end

  xit "can check the weather conditions" do
    weather = double(:weather)
    expect(aiport.check_conditions(weather)).to eq(:sunny)

  end

end
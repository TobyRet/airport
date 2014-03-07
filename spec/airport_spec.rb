require './lib/airport'
require './lib/plane'
require './lib/weather'

describe Airport do 

  let(:airport) { Airport.new }
  let(:plane) { Plane.new }

  it "should allow setting default capacity on initialising" do
    expect(airport.capacity).to eq(100)
  end

  it "can dock planes" do
    airport.dock(plane)
    expect(airport.planes_count).to eq(1)
  end

  it "can undock planes" do
    airport.dock(plane)
    expect(airport.planes_count).to eq(1)
    airport.undock(plane)
    expect(airport.planes_count).to eq(0)
  end


end
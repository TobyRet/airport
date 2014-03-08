require './lib/airport'
require './lib/plane'
require './lib/weather'

describe Airport do 

  let(:airport) { Airport.new }
  let(:plane) { Plane.new }

  it "should allow setting default capacity on initialising" do
    expect(airport.capacity).to eq(100)
  end

  context "taking off and landing" do 
  
    it "a plane can land" do
      expect(airport.planes_count).to eq(0)
      airport.permission_to_land(plane)
      expect(airport.planes_count).to eq(1)
    end

     it "a plane can take off" do
      airport.permission_to_land(plane)
      expect(airport.planes_count).to eq(1)
      airport.permission_to_take_off(plane)
      expect(airport.planes_count).to eq(0)
    end

  end


end
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

  context "traffic control" do

    it "knows when the airport is full" do
      expect(airport).not_to be_full
      fill_airport(airport)
      expect(airport).to be_full
    end

    it "does not not let a plane land when the airport is full" do
      fill_airport(airport)
      expect { airport.permission_to_land(plane) }.to raise_error(RuntimeError)
    end

    it "only lets a plane take off only in sunny weather conditions" do
      weather = double :weather
      allow(weather).to receive(:forecast) { :sunny }
      expect(weather.forecast).to eq(:sunny)
      weather_condition = weather.forecast
      airport.permission_to_take_off(plane)
      expect(airport.planes_count).to eq(0)
    end

    def fill_airport(airport)
      airport.capacity.times { airport.permission_to_land(Plane.new) }
    end


  end

end
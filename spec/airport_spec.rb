require './lib/weather'
require './lib/airport'
require './lib/plane'


describe Airport do 

  let(:airport) { Airport.new }
  let(:plane) { Plane.new }

  it "should allow setting default capacity on initialising" do
    expect(airport.capacity).to eq(100)
  end

  context "taking off and landing" do 
  
    xit "a plane can land" do
      expect(airport.planes_count).to eq(0)
      airport.permission_to_land(plane)
      expect(airport.planes_count).to eq(1)
    end

    xit "a plane can take off" do
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

    def fill_airport(airport)
      airport.capacity.times { airport.planes << plane }
    end

  end

  context "weather conditions" do

    it "lets a plane take off only in sunny weather conditions" do
      sunny
      airport.planes << plane
      expect(airport.planes_count).to eq(1)
      airport.permission_to_take_off(plane)
      expect(airport.planes_count).to eq(0)
    end

    it "won't let a plane take off in stormy weather conditions" do
      stormy
      airport.planes << plane
      expect(airport.planes_count).to eq(1)
      airport.permission_to_take_off(plane)
      expect(airport.planes_count).to eq(1)
    end

    it "won't let a plane land in stormy conditions" do
      stormy
      expect(airport.planes_count).to eq(0)
      airport.permission_to_land(plane)
      expect(airport.permission_to_land(plane)).to be_false
    end

    it "will let a plane land in sunny conditions" do
      sunny
      expect(airport.planes_count).to eq(0)
      airport.permission_to_land(plane)
      expect(airport.planes_count).to eq(1)
    end

    def sunny
      airport.stub(:weather_conditions).and_return(:sunny)
    end

    def stormy
      airport.stub(:weather_conditions).and_return(:stormy)
    end

  end

end
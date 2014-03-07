require './lib/plane.rb'

describe Plane do

  let(:plane) {Plane.new}
  
  it "can take off" do

    plane.take_off
    expect(plane.take_off).to be_true

  end

end
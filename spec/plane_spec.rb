require './lib/plane'

describe Plane do

  let(:plane) {Plane.new}
  
  it "should not be flying after we create it" do
    plane.is_flying
    expect(plane.is_flying).to be_false
  end

  it "can takeoff" do
    plane.takeoff
    expect(plane.is_flying).to be_true
  end

  it "can land" do
    plane.land
    expect(plane.is_flying).to be_false
  end

  it "can provide its current status (flying or landed)" do
    plane.status
    expect(plane.status).to eq(:landed)
  end

end

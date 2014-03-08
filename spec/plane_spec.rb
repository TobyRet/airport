require './lib/plane'

describe Plane do

  let(:plane) {Plane.new}
  
  it "should be flying after we create it" do
    plane.is_flying
    expect(plane.is_flying).to be_true
  end

  it "can provide its current status (flying or landed)" do
    plane.status
    expect(plane.status).to eq(:flying)
  end

  it "can take off" do
    plane.take_off
    expect(plane.is_flying).to be_true
    expect(plane.status).to eq(:flying)
  end

  it "can land" do
    plane.land
    expect(plane.is_flying).to be_false
    expect(plane.status).to eq(:landed)
  end

end

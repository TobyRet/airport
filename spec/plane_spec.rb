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
    plane.take_off("sunny")
    expect(plane.is_flying).to be_true
  end

  it "can't take off in stormy weather" do
    plane.take_off("stormy")
    expect(plane.is_flying).to be_false
  end

  it "can provide its current status (flying or landed)" do
    plane.status
    expect(plane.status).to eq("Landed")
  end

end

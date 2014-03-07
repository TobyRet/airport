require './lib/plane.rb'

describe Plane do

  let(:plane) {Plane.new}
  
  it "should not be flying after we create it" do
    plane.flying
    expect(plane.flying).to be_false
  end

  it "can fly" do
    plane.fly
    expect(plane.flying).to be_true
  end
 

end

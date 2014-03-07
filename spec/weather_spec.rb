require './lib/weather'

describe Weather do 

  it "should return a random weather condition" do
    weather = double(:weather, {:condition? => 'sunny'})
    weather.condition?
    expect(weather.condition?).to eq('sunny')
  end
  
end
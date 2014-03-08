require './lib/weather'

describe Weather do 

  it "should return a random weather condition" do
    weather = double(:weather, {:weather_conditions => 'sunny'})
    weather.weather_conditions
    expect(weather.weather_conditions).to eq('sunny')
  end
  
end
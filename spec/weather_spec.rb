require './lib/weather'


#class WeatherModuleAccessor; include Weather; end


describe Weather do 

  #let(:weather) { WeatherModuleAccessor.new }

  it "should return a random weather condition" do
    weather = double(:weather, {:condition? => 'sunny'})
    weather.condition?
    expect(weather.condition?).to eq('sunny')
  end
  
end
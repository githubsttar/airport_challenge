require 'passengers'
require 'airport'

describe Passengers do
  it 'get passenger to destination' do
    expect(subject.plane_to_airport).to eq('Land at an airpot')
  end
end

describe Airport do
  it 'instructs confirms plane has taken off'do
    expect(subject.confirm).to eq('Houston we have lift off - we are no longer in the airport!')
  end

  it 'prevents take off when weather is stormy' do
    weather_gauge = rand(10)
    safety = double
    allow(safety).to receive(:no_take_off) { "Do not take off" }
  end

  it 'prevents landing when weather is stormy' do
    weather_gauge = rand(10)
    safety = double
    allow(safety).to receive(:take_off) { "Take off" }
  end
end

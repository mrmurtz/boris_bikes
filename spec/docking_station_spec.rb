require 'docking_station'
require 'bike'

describe DockingStation do

  it "when asking DockingStation to release_bike, a bike is released" do
    expect(subject).to respond_to(:release_bike)
  end

  it "released working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks bike at docking station' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bike instance when asked .bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end

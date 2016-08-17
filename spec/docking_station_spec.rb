require 'docking_station'
require 'bike'

describe DockingStation do

  it "when asking DockingStation to release_bike, a bike is released" do
    expect(subject).to respond_to(:release_bike)
  end

  # it "released working bikes" do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

  it 'docks bike at docking station' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bike instance when asked .bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  # it 'says fail when releasing bike from empty docking station' do
  #   expect{subject.release_bike}.to raise_error
  # end

  # it 'initializes with empty bike array' do
  #   expect(subject.bike).to eq []
  # end

describe "#release_bike" do
  it 'releases a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end
end

end

require 'docking_station'

describe DockingStation do

  it "when asking DockingStation to release_bike, a bike is released" do
    expect(subject).to respond_to(:release_bike)
  end

  it "released working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end

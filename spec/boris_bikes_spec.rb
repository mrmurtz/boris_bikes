require 'boris_bikes'

docking_station = DockingStation.new

describe "boris bikes" do

  it "when asking DockingStation to release_bike, a bike is released" do
    expect(docking_station).to respond_to(:release_bike)
  end

  it "when asking docking_station to release bike, we get 'Bike'" do
    expect(docking_station.release_bike).to eq "bike"
  end

  it "When asking if bike is working, passes true." do
    expect(working(bike)).to eq true
  end

end

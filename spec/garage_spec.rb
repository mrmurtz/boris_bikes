require "garage"
require "bike"

describe Garage do

  # it "receive's broken bikes" do
  #   van = Van.new
  #   expect(subject.collect(van, :broken)).to eq(van.working_bikes)
  # end
  # end

  it "should repair all the broken_bikes" do
  bike = Bike.new
  bike.report_broken
  station = DockingStation.new
  station.dock(bike)
  van = Van.new
  van.collect(station, :broken)
  garage = Garage.new
  van.give(garage, :broken)
  garage.repair_bikes
  expect(garage.broken_bikes).to be_empty
end

end

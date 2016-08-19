require "van"
require "docking_station"
require "bike"


describe Van do
  station = DockingStation.new
  van = Van.new
  it "should receive working bikes" do
  expect(subject.collect(station, :working)).to eq(station.working_bikes)
end
  it 'destination should have no bikes' do
  subject.collect(station, :working)
  expect(station.working_bikes).to be_empty
end
end

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
  describe '#dock(bike)' do
    it 'docks a fixed bike at docking station' do
      bike = double(:bike, broken?: false)
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'docks a broken bike at docking station' do
      bike = double(:bike, broken?: true)
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'docks the bike and the bike lives in the docking station' do
      bike = double(:bike, broken?: false)
      expect(subject.dock(bike)).to include bike
    end

    it 'raises error when docking a bike in a full dock' do
      subject.capacity.times {subject.dock(Bike.new)}
      expect{subject.dock(Bike.new)}.to raise_error 'Dock full'
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq described_class::DEFAULT_CAPACITY
    end

    it "accepts an argument of 30 bikes capacity" do
      subject {DockingStation.new(30)}
      subject.capacity.times{subject.dock(Bike.new)}
      expect{subject.dock(Bike.new)}.to raise_error 'Dock full'
    end
  end


  # Feels like this is redundant
  # it 'returns docked bike instance when asked .bike' do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.bikes).to eq [bike]
  # end

  describe "#release_bike" do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'releases working bikes' do
      subject.dock(Bike.new)
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it "releases working bikes (using double)" do
      bike = double(:bike, broken?: false)
      subject.dock(bike)
      expect(subject.release_bike).to be bike
    end


    it 'raises error when releasing bike from empty docking station' do
      expect{subject.release_bike}.to raise_error 'No working bikes available'
    end

    it 'does not release a broken bike'do
      bike = double(:bike, broken?: true)
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error 'No working bikes available'
    end
  end

end

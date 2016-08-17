require_relative "bike"

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Dock full' if full? == false
    @bikes << bike
  end

  def full?
    @bikes.size < 20 ? true : false
  end

end

require_relative "bike"

class DockingStation
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity= DEFAULT_CAPACITY)
    @bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No working bikes available' if empty?
    bikes.pop
  end

  def dock(bike)
    fail 'Dock full' if full?
    if bike.broken? == true
      @broken_bikes << bike
    else
    bikes << bike
    end
  end

  private

  attr_reader :bikes

    def full?
      bikes.size >= capacity
    end

    def empty?
      bikes.empty?
    end


end

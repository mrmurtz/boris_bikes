require_relative "bike"

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Dock full' if full?
    @bikes << bike
  end

  private
    def full?
      @bikes.size >= DEFAULT_CAPACITY
    end

    def empty?
      @bikes.empty?
    end


end

require_relative "bike"
require_relative "van"
require_relative "garage"

class DockingStation
  attr_accessor :capacity, :working_bikes, :broken_bikes
  DEFAULT_CAPACITY = 20

  def initialize(capacity= DEFAULT_CAPACITY)
    @working_bikes = []
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No working bikes available' if empty?
    working_bikes.pop
  end

  def dock(bike)
    fail 'Dock full' if full?
    if bike.broken? == true
      @broken_bikes << bike
    else
    working_bikes << bike
    end
  end

  private

  attr_reader :bikes

    def full?
      @working_bikes.count + @broken_bikes.count >= capacity
    end

    def empty?
      working_bikes.empty?
    end


end

require_relative "bike"

class Garage

  attr_accessor :working_bikes, :broken_bikes #:broken


  def initialize
    @working_bikes = []
    @broken_bikes =[]
  end

  # def repair
  #   @broken = false
  # end

  def repair_bikes
      until @broken_bikes.count == 0
      @broken_bikes.each do |bike|
        bike[0].repair
        @working_bikes << bike
        @broken_bikes.delete(bike)
      end
    end
  end

  def collect(destination, target)
    if target == :working
      @working_bikes += destination.working_bikes
      destination.working_bikes = []
    elsif target == :broken
      @broken_bikes += destination.broken_bikes
      destination.broken_bikes =[]
    end
  end

  def give(destination, target)
      if target == :working
        destination.working_bikes << @working_bikes
        @working_bikes = []
      elsif target == :broken
        destination.broken_bikes << @broken_bikes
        @broken_bikes = []
      end
  end
end

class Garage

  def initialize
    @working_bikes = []
    @broken_bikes =[]
  end

  def collect(destination, target)
    if target == :working
    @working_bikes << destination.working_bikes
    destination.working_bikes = []
    elsif target == :broken
    @broken_bikes << destination.broken_bikes
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

class Bike

  attr_reader :broken

  def working?
    true
  end

  def broken?
    @broken
  end

  def repair
    @broken = false
  end

  def report_broken
    @broken = true
  end
end

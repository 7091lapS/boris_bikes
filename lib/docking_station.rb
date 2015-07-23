require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def release_bike
    raise "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Station is full" if full?
    @bikes << bike
  end

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.size >= 20
  end


end

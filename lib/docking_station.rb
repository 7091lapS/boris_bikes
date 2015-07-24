require_relative 'bike'



class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    raise "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Station is full" if full?
    @bikes << bike
  end

  private

  attr_reader :bikes

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.size >= capacity
  end


end

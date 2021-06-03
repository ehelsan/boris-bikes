require_relative 'bike'
class DockingStation

  attr_reader :bike
  
  def initialize
    @bike = []
  end

  def release_bike
    fail 'No bikes available' unless @bike.length > 0
    @bike.pop
  end

  def dock(bike)
    fail 'Docking Station FULL' if @bike.length > 20
    @bike.push(bike)
  end


end

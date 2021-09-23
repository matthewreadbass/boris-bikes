class DockingStation
  attr_reader :bike , :capacity
  def initialize
    @bike = bike
    @capacity = []
  end 

  def dock(bike)
    @capacity.length < 20 ? (@capacity.push(bike)) : raise
  end

  def release_bike
    @capacity.length <= 20 ? @capacity.shift : raise
    @bike ? (@bike) : raise 
  end

end
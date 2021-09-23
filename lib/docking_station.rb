class DockingStation
  attr_reader :bike , :capacity

  def initialize
    @bike = bike
    @capacity = []
  end

  def full?
    @capacity.length >= 20
  end

  def empty?
    @capacity.empty?
  end

  def dock(bike)
    self.full? ? raise : @capacity.push(bike)
  end

  def release_bike
    self.empty? ? raise : @capacity.shift
  end

end
class DockingStation
  attr_reader :bike

  def dock(bike)
    @bike = bike
    # @capacity += 1
  end

  def release_bike
    @bike ? (@bike) : ("no available bikes")
  end

  # def release_bike
  #   if @capacity >= 1
  #     @bike = Bike.new
  #     "Bike released"
  #     @capacity -= 1
  #   else
  #     fail
  #   end
  # end

end
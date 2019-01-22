class Bus

  attr_accessor :route, :destination, :passengers

  def initialize(route, destination, passengers)
    @route = route
    @destination = destination
    @passengers = []
  end

  def get_route()
    return @route
  end

  def get_destination()
    return @destination
  end

  def make_noise
    return "Brum brum!"
  end

  def get_passengers()
    return @passengers
  end

  def pick_up_passenger(passenger)
    @passengers << passenger
    return @passengers
  end

  def remove_passenger(passenger)
    @passengers.delete(passenger)
    return @passengers
  end

  def remove_all_passengers(array)
    array.clear
    return array
  end

end

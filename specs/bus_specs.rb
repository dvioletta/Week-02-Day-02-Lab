require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")

class BusTest < MiniTest::Test

  def setup
    @bus_1 = Bus.new("22", "Ocean Terminal", [])

    person_1 = Person.new("Steve", "27")
    person_2 = Person.new("Jane", "37")
    person_3 = Person.new("Jim", "18")

    @passengers = [person_1, person_2, person_3]
  end

  def test_get_route()
    assert_equal("22", @bus_1.get_route)
  end

  def test_get_destination()
    assert_equal("Ocean Terminal", @bus_1.get_destination)
  end

  def test_bus_can_make_noise()
    assert_equal("Brum brum!", @bus_1.make_noise)
  end

  def test_get_passengers()
    assert_equal([] , @bus_1.get_passengers)
  end

  def test_pick_up_passenger()
    person_1 = Person.new("Steve", "27")
    result = [person_1]
    assert_equal(result, @bus_1.pick_up_passenger(person_1))
  end

  def test_pick_up_passenger()
    person_1 = Person.new("Steve", "27")
    passengers = [person_1]
    assert_equal([], @bus_1.remove_passenger(person_1))
  end

  def test_remove_all_passengers()
    person_1 = Person.new("Steve", "27")
    person_2 = Person.new("Jane", "37")
    person_3 = Person.new("Jim", "18")

    passengers = [person_1, person_2, person_3]
    assert_equal([], @bus_1.remove_all_passengers(passengers))
  end
end

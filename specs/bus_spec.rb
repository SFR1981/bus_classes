require ("minitest/autorun")
require ("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Haymarket")
    @passenger1 = Person.new("chris", 29)
    @passenger2 = Person.new("steve", 36)
  end


  def test_bus_has_route_number
    assert_equal( 22, @bus.route_number())
  end

  def test_bus_has_destination
    assert_equal( "Haymarket", @bus.destination())
  end

  def test_bus_can_drive
    assert_equal("brum brum", @bus.drive())
  end

  def test_bus_passenger_number
   assert_equal(0, @bus.number_of_passengers())
  end


  def test_bus_picks_up
    @bus.pick_up(@passenger1)
    assert_equal(1 , @bus.number_of_passengers())

  end

  def test_bus_drops_off
    @bus.pick_up(@passenger1)
    @bus.drop_off(@passenger1)
    assert_equal(0, @bus.number_of_passengers())
  end

  def test_bus_can_empty
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.empty()
    assert_equal(0, @bus.number_of_passengers())
  end





end

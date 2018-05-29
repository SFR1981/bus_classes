require ("minitest/autorun")
require ("minitest/rg")
require_relative("../bus.rb")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Haymarket")
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

end

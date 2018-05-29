require ("minitest/autorun")
require ("minitest/rg")
require_relative("../bus_stop.rb")
require_relative("../person.rb")

class BusStopTest < MiniTest::Test

  def setup
   @bus_stop = BusStop.new("Haymarket")
   @passenger1 = Person.new("chris", 29)
   @passenger2 = Person.new("steve", 36)
  end


  def test_bus_stop_has_name
   assert_equal("Haymarket", @bus_stop.name())
  end

  def test_number_of_people_in_queue
    assert_equal(0, @bus_stop.queue_length())

  end

  def test_add_person_to_queue
    @bus_stop.add_person_to_queue(@passenger2)
    assert_equal(1, @bus_stop.queue_length())

  end

  def test_queue_picked_up
    @bus_stop.add_person_to_queue(@passenger1)
    @bus_stop.add_person_to_queue(@passenger2)
    @bus_stop.pick_up()
    assert_equal(0, @bus_stop.queue_length())
  end

  def test_return_queue
    @bus_stop.add_person_to_queue(@passenger1)
    assert_equal([@passenger1], @bus_stop.return_queue())

  end

end

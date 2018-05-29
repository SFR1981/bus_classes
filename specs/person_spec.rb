require ("minitest/autorun")
require ("minitest/rg")
require_relative("../person.rb")

class PersonTest < MiniTest::Test

  def setup
   @person = Person.new("chris", 29)
  end

  def test_person_has_name
  assert_equal("chris", @person.name())
  end

  def test_person_has_age
   assert_equal(29, @person.age())
  end


end

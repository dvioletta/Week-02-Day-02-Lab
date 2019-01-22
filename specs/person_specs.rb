require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class PersonTest < MiniTest::Test

  def setup
    @person_1 = Person.new("Steve", "27")
    @person_2 = Person.new("Jane", "37")
    @person_3 = Person.new("Jim", "18")
  end

  def test_get_name()
    assert_equal("Steve", @person_1.get_name)
  end

  def test_get_age()
    assert_equal("27", @person_1.get_age)
  end

end

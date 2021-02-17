require 'minitest/autorun'

class TypeAsssertionsTest < MiniTest::Test
  attr_reader :value
  
  def setup
    @value = Numeric.new
  end
  
  def test_type_assertion
    assert_instance_of(Numeric, value)
  end
  
end
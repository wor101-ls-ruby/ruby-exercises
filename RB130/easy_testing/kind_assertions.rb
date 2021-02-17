require 'minitest/autorun'

class KindAssertions < MiniTest::Test
  attr_reader :value
  
  def setup
    @value = 5
  end
  
  def test_kind_assertions
    assert_kind_of(Numeric, value)
  end
end
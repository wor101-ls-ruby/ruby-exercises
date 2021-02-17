require 'minitest/autorun'

class BooleanTest < MiniTest::Test
  attr_reader :value
  
  def setup
    @value = 5
  end
  
  def test_boolean
    assert value.odd?, 'value is not odd'
  end
  
end
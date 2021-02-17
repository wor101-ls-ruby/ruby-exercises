require 'minitest/autorun'

class NilAssertionsTest < MiniTest::Test
  attr_reader :value
  
  def setup
    @value = nil
  end
  
  def test_nil_assertions
    assert_nil(value)
  end
  
end
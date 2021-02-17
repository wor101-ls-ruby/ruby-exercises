require 'minitest/autorun'

class EqualityAssertionsTest < MiniTest::Test
  attr_reader :value
  
  def setup
    @value = 'XYZ'
  end
  
  def test_downcase
    assert_equal('xyz', value.downcase)
  end
  
end
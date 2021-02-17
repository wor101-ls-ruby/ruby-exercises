require 'minitest/autorun'

class EmptyObjectAssertions < MiniTest::Test
  attr_reader :list
  
  def setup
    @list = []
  end
  
  def test_empty_object_assertions
    assert_empty(list)
    assert_equal(true, list.empty?)
  end
  
end
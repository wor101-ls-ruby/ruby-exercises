require 'minitest/autorun'

class List
  
  def process
    self
  end
  
end

class SameObjectAssertionTest < MiniTest::Test
  attr_reader :list
  
  def setup
    @list = List.new
  end
  
  def test_same_object_assertion
    assert_same(list, list.process)
  end
  
end
require 'minitest/autorun'

class IncludedObjectAssertions < MiniTest::Test
  attr_reader :list
  
  def setup
    @list = ['xyz', 'a']
  end
  
  def test_included_object_assertion
    assert_includes(list, 'xyz')
  end
  
  
end
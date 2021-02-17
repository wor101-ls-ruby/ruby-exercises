require 'minitest/autorun'


class RefutationsTest < Minitest::Test
  attr_reader :list
  
  def setup
    @list = ['test', 'hello']
  end
  
  def test_refutations
    refute_includes(list, 'xyz')
  end
  
end
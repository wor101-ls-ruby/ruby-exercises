require 'minitest/autorun'

class NoExperienceError < StandardError ; end


class Employee
  
  def initialize
    @experience = nil
  end
  
  def hire
    raise NoExperienceError if @experience == nil
  end
  
end

class ExceptioNAssertions < MiniTest::Test
  attr_reader :employee
  
  def setup
    @employee = Employee.new
  end
  
  def test_exception_assertions
    assert_raises NoExperienceError do
      employee.hire
    end
  end
end
require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  attr_accessor :cash_register, :transaction
  
  
  def setup
    @cash_register = CashRegister.new(100)
    @transaction = Transaction.new(20)
  end
  
  def test_accept_money
    register = CashRegister.new(1000)
    transaction = Transaction.new(20)
    transaction.amount_paid = 20
    
    previous_amount = register.total_money
    register.accept_money(transaction)
    new_amount = register.total_money
    assert_equal(previous_amount + 20, new_amount)
  end
  
  def test_change
    register = CashRegister.new(100)
    transaction = Transaction.new(75)
    transaction.amount_paid = 92.25
    assert_equal(17.25, register.change(transaction))
  end
  
  def test_give_receipt
    transaction = Transaction.new(25.44)
    expected_output = "You've paid $25.44.\n"
    assert_output(expected_output) do
      cash_register.give_receipt(transaction)
    end
  end
  

  
end
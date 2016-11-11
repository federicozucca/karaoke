require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test

  def setup
    @customer = Customer.new('Federico','rock',10)
  end

  def test_customer_has_name()
    assert_equal(@customer.name,'Federico')
  end

  def test_customer_has_taste()
    assert_equal(@customer.taste,'rock')
  end

  def test_customer_has_money()
    assert_equal(@customer.money,10)
  end
  


end
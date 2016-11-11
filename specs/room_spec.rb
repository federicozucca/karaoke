require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../songs')

class TestRoom < Minitest::Test

  def setup
      @customer1= Customer.new('Federico',29,10)
      @customer2 = Customer.new('Giulia',28,20)
      @customers = [@customer1, @customer2]
      @room = Room.new('pop', 2)
    end

    def test_customer_has_name()
      assert_equal(@room.name,'pop')
    end

    def test_customer_capacity()
      assert_equal(@room.capacity,2)
    end

    def test_customer_at_beginning
      assert_equal(0, @room.customer_count)
    end

    def test_add_customer
      @room.add_customer(@customer1) 
      assert_equal(1, @room.customer_count)
    end

    def test_cant_add_over_capacity
      @room.add_customer(@customer1) 
      @room.add_customer(@customer1) 
      @room.add_customer(@customer1) 
      assert_equal(2, @room.customer_count)
    end

end
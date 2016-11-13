require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../customer')
require_relative('../songs')

class TestRoom < Minitest::Test

  def setup

      @room = Room.new('pop', 3)
      @song = Song.new("Thundershock","ACDC","rock")
    end

    def test_customer_has_name()
      assert_equal(@room.name,'pop')
    end

    def test_customer_capacity()
      assert_equal(@room.capacity,3)
    end

    def test_customer_at_beginning
      assert_equal(0, @room.customer_count)
    end

    def test_add_customer
      @room.add_customer(@customer) 
      assert_equal(1, @room.customer_count)
    end

    def test_cant_add_over_capacity
      result1  = @room.add_customer(@customer) 
      result2 = @room.add_customer(@customer) 
      result3 = @room.add_customer(@customer) 
      result4 = @room.add_customer(@customer) 
      assert_equal(3, @room.customer_count)
      assert_equal(true, result1)
      assert_equal(true, result2)
      assert_equal(true, result3)
      assert_equal(false, result4)
    end

    def test_delete_customer
      result1  = @room.add_customer(@customer) 
      result2 = @room.add_customer(@customer)
      @room.delete_customer(@customer) 
      assert_equal(1, @room.customer_count)
    end

    def test_songs_at_beginning
      assert_equal(0, @room.songs_count)
    end

    def test_add_song
      result1  = @room.add_song(@song)
      result2  = @room.add_song(@song)
      result3  = @room.add_song(@song)
      assert_equal(3, @room.songs_count)

    end
end
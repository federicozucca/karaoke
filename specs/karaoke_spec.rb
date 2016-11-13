require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../customer')
require_relative('../room')
require_relative('../songs')
require_relative('../karaoke')

class TestKaraoke < Minitest::Test

  def setup
      @karaoke = Karaoke.new('Caraoke','1 Queen Street' ,3 ,10)
      @customer = Customer.new('Federico','rock',10)
    end

    def test_karaoke_name()
      assert_equal(@karaoke.name,'Caraoke')
    end

    def test_karaoke_address()
      assert_equal(@karaoke.address,'1 Queen Street')
    end


    def test_karaoke_rooms()
      assert_equal(@karaoke.rooms,3)
    end

    def test_karaoke_entry_fee()
      assert_equal(@karaoke.entry_fee,10)
    end
  
    def test_enought_money
        # binding.pry
      result = @karaoke.enought_money(@customer)

    assert_equal("You can have access", result)
    end

  end

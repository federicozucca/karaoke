require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')
require_relative('../songs')
require_relative('../karaoke')

class TestKaraoke < Minitest::Test

  def setup
      @karaoke = Karaoke.new('Caraoke','1 Queen Street' ,3 ,10)
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
 
  end

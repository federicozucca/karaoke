require('minitest/autorun')
require('minitest/rg')
require_relative('../songs')

class TestSong < Minitest::Test

  def setup
    @song = Song.new("Thundershock","ACDC","rock")
  end

  def test_song_title()
    assert_equal(@song.title, "Thundershock",)
  end

  def test_song_artist()
    assert_equal(@song.artist, "ACDC")
  end

  def test_song_genre()
    assert_equal(@song.genre, "rock")
  end
  
end
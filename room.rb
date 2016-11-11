class Room
 
  attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @customers = []
    @songs = []
  end

#checkin
  def add_customer(customer)
    if customer_count < @capacity
      @customers << customer
      return true
    end
    return false
  end

#checkout
def delete_customer(customer)
    @customers.delete_at(1)
end

  def customer_count
    return @customers.length
  end

  def songs_count
    return @songs.length
  end

  def add_song(song)
      @songs << song
  end

end
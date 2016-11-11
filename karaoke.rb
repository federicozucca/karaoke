class Karaoke
  attr_reader :name, :rooms , :entry_fee, :address

  def initialize(name, address ,rooms, entry_fee)
    @name = name
    @rooms = rooms  
    @entry_fee = entry_fee
    @address = address
  end



 
end
require('pry-byebug')

class Karaoke
  attr_reader :name, :rooms , :entry_fee, :address

  def initialize(name, address ,rooms, entry_fee)
    @name = name
    @rooms = rooms  
    @entry_fee = entry_fee
    @address = address
  end

  def enought_money(customer)
    # binding.pry
    if @entry_fee <= customer.money
      return "You can have access"
    else
      "No way pal. Came back with your money"
    end
  end

end
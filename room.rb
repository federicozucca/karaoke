class Room
 
  attr_reader :name, :capacity

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @customers = []
    @song = []
  end

  def add_customer(customer)
    if customer_count < @capacity
      @customers << customer
    end

  end

  def customer_count
    return @customers.length
  end
  

end
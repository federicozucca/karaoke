class Customer
  attr_reader :name, :taste, :money

  def initialize(name, taste, money)
    @name = name
    @taste = taste
    @money = money
  end

end
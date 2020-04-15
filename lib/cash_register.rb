class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item,price, multiplier = 1)
    @items << item
    @total += price
  end

end

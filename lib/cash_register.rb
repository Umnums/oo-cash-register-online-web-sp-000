class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item,price, multiplier = 1)
    counter = 0
    while counter < multiplier
      @items << item
      @total += price
      counter += 1
    end
  end

end

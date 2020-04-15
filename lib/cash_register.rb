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

  def apply_discount
    if @discount == 0
      puts "No discount"
    else
      @total = @total * (100-@discount)/100
      puts "After the discount, the total comes to $#{@total}."
    end
  end

end

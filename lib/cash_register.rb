require 'pry'
class CashRegister
  attr_accessor :total, :discount, :last_item_transaction_cost, :items
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def items
    @items
  end
  
  def add_item(title, price, quantity = 1)
    quantity.times do
      items.push(title)
    end
    @total = @total+(price*quantity)
    @last_item_transaction_cost = (price*quantity)
  end
  
  def apply_discount
    if @discount != 0
      @total = @total*((100.0-@discount.to_f)/100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    

end

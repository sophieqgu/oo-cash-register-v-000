class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction 
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount 
  end 
  
  def total 
    @total 
  end 
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do 
      @items << title
    end 
    @last_transaction = [title, price, quantity]
  end 
  
  def apply_discount
    if (@discount != 0) 
      @total *= (1 - @discount/100.class)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end 
  end 
  
  def items
    @items 
  end 
  
  def void_last_transaction
    @total -= @last_transaction[1]* @last_transaction[2]
    @items.pop
  end 
end 
  
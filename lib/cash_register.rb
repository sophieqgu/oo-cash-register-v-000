class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction 
  
  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount 
  end 
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
    quantity.times do 
      @items << title
    end 
    self.last_transaction = [title, price, quantity]
  end 
  
  def apply_discount
    if (@discount != 0) 
      @total -= @total*@discount/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end 
  end 
  
  def void_last_transaction
    self.total -= self.last_transaction[1]* self.last_transaction[2]
    self.items.pop
  end 
end 
  
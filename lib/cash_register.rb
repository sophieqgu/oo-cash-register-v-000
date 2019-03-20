class CashRegister
  attr_accessor :discount 
  
  def initialize(discount = 0)
    @total = 0
  end 
  
  def total 
    @total 
  end 
  
  def add_item(title, price, quantity = 1)
    @total += (price * quantity)
  end 
  
  def apply_discount(discount)
    if (discount !== 0) 
     @total *= (100 - discount)/100
      puts "After the discount, the total comes to #{@total}."
    else
      puts "There is no discount to apply."
    end 
  end 
  
  def items
    
  
  
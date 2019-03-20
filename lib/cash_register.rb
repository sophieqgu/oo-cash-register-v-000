class CashRegister
  attr_accessor :discount :last_transaction 
  
  def initialize(discount = 0)
    @total = 0
    @items = []
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
  
  def apply_discount(discount)
    if (discount !== 0) 
     @total *= (100 - discount)/100
      puts "After the discount, the total comes to #{@total}."
    else
      puts "There is no discount to apply."
    end 
  end 
  
  def items
    @items 
  end 
  
  def void_last_transaction(last_transaction)
    @total -= last_transaction(1) * last_transaction(2)
    @items.pop
  end 
  
  
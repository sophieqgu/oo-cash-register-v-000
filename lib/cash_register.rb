class CashRegister
  attr_accessor :discount 
  
  def initialize(discount = 0)
    @total = 0
  end 
  
  def total 
    @total 
  end 
  
  def add_item(item)
    
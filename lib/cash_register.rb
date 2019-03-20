class CashRegister
  attr_accessor :discount 
  
  def initialize(discount)
    @total = 0
  end 
  
  def total 
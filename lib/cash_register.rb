require 'pry'

class CashRegister
  
<<<<<<< HEAD
  attr_accessor :total, :discount

=======
  attr_accessor :name, :void_last_transaction, :discount
  
  ITEMS = []
>>>>>>> cf077d05fda3e9c973b418b3a9d7f4190b456461
  
  def initialize (discount=0)
  #   sets an instance variable @total on initialization to zero (FAILED - 1)
  #   optionally takes an employee discount on initialization (FAILED - 2)
    @total = 0
<<<<<<< HEAD
    @discount = discount
  end
  
  
  def add_item (title, price, quantity=1)
  #   accepts a title and a price and increases the total (FAILED - 4)
  #   also accepts an optional quantity (FAILED - 5)
  #   doesn't forget about the previous total (FAILED - 6)
    @price = price
    @quantity = quantity
    @items ||= []
    if @quantity == 1
      @items << title
    else 
      @quantity.times do |i|
        @items << title
      end
    end
        
    @total = @total + (@price*@quantity)
=======
    #@employee_discount = employee_discount
    def discount
      @discount = discount
      binding.pry
    end
    #binding.pry
  end
  
  def total
  #   returns the current total (FAILED - 3)   
    @total
  end
  
  def add_item (title, price, quantity=1)
    ITEMS << title
    @total = @total + (price*quantity)
  #   accepts a title and a price and increases the total (FAILED - 4)
  #   also accepts an optional quantity (FAILED - 5)
  #   doesn't forget about the previous total (FAILED - 6)   
>>>>>>> cf077d05fda3e9c973b418b3a9d7f4190b456461
  end
  
  def apply_discount
  #   the cash register was initialized with an employee discount
  #     applies the discount to the total price (FAILED - 7)
  #     returns success message with updated total (FAILED - 8)
  #     reduces the total (FAILED - 9)
  #   the cash register was not initialized with an employee discount
<<<<<<< HEAD

    
    if @discount==0 
      "There is no discount to apply."
    else
      @total = (@total * (1-(@discount/100.0))).round
      "After the discount, the total comes to $#{@total}."
=======
  #     returns a string error message that there is no discount to apply (FAILED- 10)  
    if @discount = 0 
      puts "There is no discount to apply."
    else
      @total = @total*(1-(@discount/100))
      puts "After the discount, the total comes to #{@total}."
>>>>>>> cf077d05fda3e9c973b418b3a9d7f4190b456461
    end
  end
  
  def items
<<<<<<< HEAD
  @items
  end
  
  def void_last_transaction
    @total = @total - (@price*@quantity)  #   subtracts the last transaction from the total (FAILED - 12)    
=======
  #   returns an array containing all items that have been added (FAILED - 11)
  ITEMS
  end
  
  def void_last_transaction
  #   subtracts the last transaction from the total (FAILED - 12)    
>>>>>>> cf077d05fda3e9c973b418b3a9d7f4190b456461
  end
  
end 
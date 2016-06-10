
require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :lastitemcost

    def initialize(discount=0)
      @total=0
      @discount=discount
      @items= []

    end

    def add_item(title, price, quantity=1)
      @total=@total+price*quantity
      @lastitemcost= price*quantity
      
      quantity.times do |x|
        @items << title
      end


    end

    def apply_discount()
      
      if discount==0
        return "There is no discount to apply."
      else 
        @total=@total*(1-discount/100.0)
        @total=@total.to_i
        return "After the discount, the total comes to $#{@total}."
      end

    end

    def void_last_transaction()
      @total=@total-@lastitemcost
    end



end

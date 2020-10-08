require 'pry'
class CashRegister
    
    attr_accessor :total, :discount
    @@cart = []
    #@@new_register = []

    def initialize(discount=0)
        @total = 0
        @discount = discount
        
    end

    def add_item(title, price, quantity = 1)
       
        def items(title)
            new_register = []
            new_register << title 
        end
       
        @total += (price * quantity)
        
        @@cart << @total 
        
    end

    def apply_discount
        if @discount == 20
            @total -= self.total.to_f * (@discount.to_f/100.0)
            return "After the discount, the total comes to $#{@total.to_i}."
        elsif @discount == 0
            return "There is no discount to apply."
        end
    
    end
    # def items(title)
    #     new_register = []
    #     new_register << title 
    # end


   
    
end

# person = CashRegister.new()

# persson.title = "eggs"

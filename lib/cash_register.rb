
class CashRegister
	attr_reader :discount
	attr_accessor :total, :items, :item, :price, :quantity
	def initialize(discount=0)
		@total = 0.0
		@discount = discount
		@items = []
	end
	def total
		@total
	end
	def add_item(item, price, quantity = 1)
		@price = price 
		@total+=(price*quantity)
		quantity.times do
			@items << item
		end
	end
	def apply_discount
		@total = @total - @total*(discount.fdiv(100))
		discount > 0 ? "After the discount, the total comes to $#{@total.to_i}." : "There is no discount to apply."
	end
	def void_last_transaction
		@total = @total - price
		
	end

end
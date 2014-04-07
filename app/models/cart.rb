class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def get_total_price				# Übung ShoppingCartErweitern (Kap. 9)
        price = 0
        line_items.each do |line_item|
           	price += line_item.product.price
        end
    	return price 
    end
end

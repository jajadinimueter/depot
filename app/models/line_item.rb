class LineItem < ActiveRecord::Base
  belongs_to :order		# Iteration G1 (Chapter 12.1, p. 167)
  belongs_to :product
  belongs_to :cart

  def total_price		# Iteration E3 (Chapter 10.3, p. 131)
    product.price * quantity
  end
end

class StoreController < ApplicationController
  include CurrentCart		# Iteration F1, Chapter 11.1, p. 139
  before_action :set_cart
  def index
  	@products = Product.order(:title)
  end
end

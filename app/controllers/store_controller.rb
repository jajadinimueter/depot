class StoreController < ApplicationController
  include CurrentCart		# Iteration F1, Chapter 11.1, p. 139
  before_action :set_cart
  # def index
  # 	@products = Product.order(:title)
  # end
  def index			# Iteration J4 (Chapter 15.4, p. 229)
    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
    end
  end  
end

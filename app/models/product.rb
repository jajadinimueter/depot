#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
class Product < ActiveRecord::Base
  has_many :line_items  # Iteration D2
  has_many :orders, through: :line_items  # Iteration G2 (Chapter 12.2, p. 174)

  before_destroy :ensure_not_referenced_by_any_line_item   # Iteration D2

  validates :title, :description, :image_url, presence: true
  # validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.05}
  validates :price, format: {
    with: /\A\d{1,6}(\.\d{1}5?)?\z/,
    message: "must be a multiple unit of 0.05"
  } # not necessary to convert: :price.to_s
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png)\Z}i,
    message: "must be a URL for GIF, JPG or PNG image."
  }
  validates :title, length: {minimum: 10}
  # Check, if price is entered as a multiple of 0.05 (steps of 5 centimes)
  # def price_in_five_centimes
  #   if price and price % 0.05 != 0
  #     errors.add(:price, 'Price must be a multiple of 0.05.')
  #   end
  # end

  # validate :price_in_five_centimes

  def price_in_five_centimes
    if price and price % 0.05 != 0.0
      errors.add(:price, "Price must be in 0.05 steps.")
    end
  end 
  validate :price_in_five_centimes
  
  def self.latest     # Iteration C5: Caching of Partial Results (p. 104)
    Product.order(:updated_at).last
  end


  private  # Iteration D2

    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item  # hook method (a method that Rails calls automatically at a given point in an object’s life)
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end

end

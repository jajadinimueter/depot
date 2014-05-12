require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  
  # fixtures :products   # Iteration B.2 (Chapter 7.2, p. 86f.)

  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  # test "product price must be positive" do
  #   product = Product.new(title:       "My Book Title",
  #                         description: "yyy",
  #                         image_url:   "zzz.jpg")
  #   product.price = -1
  #   assert product.invalid?
  #   assert_equal ["must be greater than or equal to 0.01"],
  #     product.errors[:price]

  #   product.price = 0
  #   assert product.invalid?
  #   assert_equal ["must be greater than or equal to 0.01"], 
  #     product.errors[:price]

  #   product.price = 1
  #   assert product.valid?
  # end

  def new_product(image_url)
    Product.new(title:       "My Book Title",
                description: "yyy",
                price:       1,
                image_url:   image_url)
  end

  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
             http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    
    ok.each do |name|
      assert new_product(name).valid?, "#{name} should be valid"
    end

    bad.each do |name|
      assert new_product(name).invalid?, "#{name} shouldn't be valid"
    end
  end

  test "product is not valid without a unique title" do
    product = Product.new(title:       products(:ruby).title,
                          description: "yyy", 
                          price:       1, 
                          image_url:   "fred.gif")

    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end

  test "product is not valid without a unique title - i18n" do
    product = Product.new(title:       products(:ruby).title,
                          description: "yyy", 
                          price:       1, 
                          image_url:   "fred.gif")

    assert product.invalid?
    assert_equal [I18n.translate('errors.messages.taken')],
                 product.errors[:title]
  end

  test "product price must a multiple unit of 0.05" do
    product = Product.new(title:       "My Book Title",
                          description: "yyy",
                          image_url:   "zzz.jpg")
    product.price = 0.91
    assert product.invalid?
    # assert_equal ["Price must be in 0.05 steps."], 
    #    product.errors[:price]
    assert product.errors[:price].include? "Price must be in 0.05 steps."   # in Java: array_contains, list_contains
    assert product.errors[:price].include? "must be a multiple unit of 0.05" 
    # product.price = 0
    # assert product.invalid?
    # assert_equal ["must be greater than or equal to 0.05"],
    #   product.errors[:price]

    product.price = 0.95
    assert product.valid?
  end
end

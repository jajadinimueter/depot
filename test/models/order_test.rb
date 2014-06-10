require 'test_helper'

class OrderTest < ActiveSupport::TestCase

  test "order attributes must not be empty" do
    order = Order.new
    assert order.invalid?
    assert order.errors[:name].any?
    assert order.errors[:address].any?
    assert order.errors[:email].any?
  end

end

class AddQuantityToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :quantity, :integer, default: 1	  # default value (Chapter 10.1: Iteration E.1)
  end
end

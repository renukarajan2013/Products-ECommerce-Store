class AddColumnToCartItems < ActiveRecord::Migration
  def self.up
    add_column :cart_items, :product_id, :integer
  end
end

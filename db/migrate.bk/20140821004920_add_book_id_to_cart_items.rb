class AddBookIdToCartItems < ActiveRecord::Migration
  def change
    add_column :cart_items, :book_id, :integer
  end
end

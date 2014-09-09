class AddIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :book_id, :decimal
    add_index :books, :book_id
  end
end

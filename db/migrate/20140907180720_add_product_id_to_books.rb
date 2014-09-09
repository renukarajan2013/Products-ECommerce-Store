class AddProductIdToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :product_id, :integer
  end

  def self.down
    remove_column:books, :product_id, :integer
  end

end

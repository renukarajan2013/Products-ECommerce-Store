class AddProductIdToGame < ActiveRecord::Migration
  def self.up
    add_column :games, :product_id, :integer
  end
end

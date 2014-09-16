class AddCategoryIdToProduct < ActiveRecord::Migration
  def self.up 
    add_column :products, :category_id, :integer
  end
end

class RemoveCategoryIdFromProduct < ActiveRecord::Migration
  def self.up
    remove_column :products, :category_id, :string
  end
end

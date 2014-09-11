class AddImageToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :image, :string
  end
end

class AddImagesToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :images, :string
  end
end

class AddTypeToProduct < ActiveRecord::Migration
  def self.up
    add_column :products, :type, :string
  end
end

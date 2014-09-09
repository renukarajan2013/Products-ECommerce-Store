class AddColumnToElectronics < ActiveRecord::Migration
 def self.up
    add_column :electronics, :description, :string
    add_column :electronics, :product_id, :integer
  end
end

class AddPropertiesToProduct < ActiveRecord::Migration
  def self.up
	 add_column :products, :properties, :hstore
  end
end

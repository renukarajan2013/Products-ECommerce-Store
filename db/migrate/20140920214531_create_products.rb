class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :type

      t.timestamps
    end
  end
end

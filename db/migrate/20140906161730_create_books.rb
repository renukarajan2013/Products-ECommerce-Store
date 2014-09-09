class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.string :author
      t.integer :product_id
    end
  end
end

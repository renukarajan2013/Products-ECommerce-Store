class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.text :name
      t.text :author

      t.timestamps
    end
  end

  def change 
      t.price:decimal
  end
end

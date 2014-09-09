class CreateGames < ActiveRecord::Migration
 def self.up
    create_table :games do |t|
      t.string :rating

      t.timestamps
    end
  end
end

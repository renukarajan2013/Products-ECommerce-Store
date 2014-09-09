class DropTableBooks < ActiveRecord::Migration
  def self.down
	drop_table :Books
  end
end

class EnableHstoreExtension < ActiveRecord::Migration
  def self.up
	enable_extension 'hstore'
  end
end

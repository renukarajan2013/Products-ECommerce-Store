class AddRatingToGames < ActiveRecord::Migration
  def up
    add_column :games, :rating, :string
  end
end

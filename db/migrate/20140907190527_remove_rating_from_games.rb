class RemoveRatingFromGames < ActiveRecord::Migration
  def down
    remove_column :games, :rating, :integer
  end
end

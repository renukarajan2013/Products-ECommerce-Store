class ChangeBookIdDataType < ActiveRecord::Migration


	def change
		change_column :Books, :book_id, :integer
	end
end

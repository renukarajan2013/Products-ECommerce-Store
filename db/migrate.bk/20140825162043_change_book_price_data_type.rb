class ChangeBookPriceDataType < ActiveRecord::Migration


	def change
		change_column :Books, :price, :integer
	end
end

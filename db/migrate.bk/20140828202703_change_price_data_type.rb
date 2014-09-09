class ChangePriceDataType < ActiveRecord::Migration
  def change
	change_column :Books, :price, :Integer
  end
end

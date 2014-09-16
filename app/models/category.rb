class Category < ActiveRecord::Base
	has_many :products
	
delegate :music_records, to: :products

end

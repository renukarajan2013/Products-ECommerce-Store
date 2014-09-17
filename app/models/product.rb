class Product < ActiveRecord::Base

	mount_uploader :image, ImageUploader

	searchable do
		text :name, :price, :type
	end

	
end

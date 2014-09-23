class Product < ActiveRecord::Base
#  serialize :images, Hash
  serialize :data, ActiveRecord::Coders::Hstore
  has_many :cart_items, dependent: :delete_all

#	mount_uploader :image1, ImageUploader, serialize_to: :images
	mount_uploader :image1, ImageUploader

	searchable do
		text :name, :price, :type
	end

        def some_params
		params.require(:some).permit(:name, :price, :title).tap do |whitelisted|
			whitelisted[:settings] = params[:some][:settings]	
		end

        end

end

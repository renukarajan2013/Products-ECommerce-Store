class Product < ActiveRecord::Base
	has_many :categories
	has_many :books
	has_many :games
end

class ProductsController < ApplicationController

def browse
	@products=Product.all
end

def show_products_page
	@category = Category.where(id: params[:id]).first.category
	#Ugly code, find a better way
	if (@category == 'Books')
		redirect_to book_show_path(params[:product_id])
	elsif (@category == 'Games')
		redirect_to game_show_path(params[:product_id])
	end
	
	
end
end

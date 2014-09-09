class CartController < ApplicationController
	before_filter :initialize_cart


def edit
	@cart = initialize_cart
	
end


end

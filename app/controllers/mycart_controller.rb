class MycartController < ApplicationController

def mycart
	@cart=initialize_cart
	redirect_to edit_cart_url(@cart)
end

end

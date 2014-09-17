class CartItemsController < ApplicationController

def create
	@cart=initialize_cart
	@book = Book.find(params[:book_id])

	@cart_item =  @cart.cart_items.build(:book => book)
	
	respond_to do |format|
	if @cart_item.save
		format.html {redirect_to(@cart_item.cart, :notice => 'Line item was successfully created.') }
		format.xml {render :xml => @cart_item, :status => :created, :location => @cart_item}
	else
		format.html {render :action => "new"}
		format.xml {render :xml => @cart_item.errors, :status => :unprocessable_entity }
	
	end

end

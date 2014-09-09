class Cart < ActiveRecord::Base
	has_many :cart_items, :dependent =>:destroy

	def total_price
		 total_price = 0 
		 @cart_items = CartItem.where(cart_id: self.id)
		 @cart_items.each do |cart_item|
		 	@product= Product.where(id: cart_item.product_id).first
			total_price += @product.price
		 end
		 total_price			
	end
end

class ProductsController < ApplicationController

def browse
	@products=Product.all
end

def show_products_page
	@category = Category.where(id: params[:id]).first.category
	redirect_to product_path(params[:product_id])
	
	
end

def create
	@product = Product.create!(product_params)
	redirect_to product_path(@product)
	
end


def destroy
  @product= Product.where(id: params[:id]).first
  @product.destroy
 
  redirect_to browse_path
end

def show
  	@product = Product.where(id: params[:id]).first
end


def edit
  	@product = Product.where(id: params[:id]).first
end


def update
	 @product= Product.find(params[:id])

        @product.update(product_params)
        redirect_to browse_path
        
end



private
  def product_params
    params.require(:product).permit(:name ,:price, :category_id, :image)
  end
end

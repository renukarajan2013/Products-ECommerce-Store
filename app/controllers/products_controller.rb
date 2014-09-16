class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

def browse
	@products=Product.all
end

def show_products_page
	@category = Category.where(id: params[:id]).first.category
	redirect_to product_path(params[:product_id])
end

def create
  @product = Product.new(product_params)
  if @product.save
    flash[:notice] = 'Record was successfully created.'
  end	
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
  #	@product = Product.where(id: params[:id]).first
 @product = eval("#{params[:controller].classify}.find(params[:id])")
end


def update
	@product = type.find(params[:id])
	@product.update_attributes(product_params)
end

def index
	redirect_to browse_url
end

private


   def set_product
    #@product = type.find(params[:id])
	@product= eval("#{params[:controller].classify}.find(params[:id])")
  end



end

  def product_params
    params.require(:product).permit(:name, :price, :type, :image)
  end


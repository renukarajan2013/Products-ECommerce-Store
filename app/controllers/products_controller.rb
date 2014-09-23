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
  redirect_to browse_url
end

def destroy
  @product.destroy
  redirect_to browse_path
end

def show
  @product_properties = @product.properties
end

def edit
  @product_properties = @product.properties
end

def update
  @product.update_attributes(product_params)
end

def index
  @search = Product.search do
    fulltext params[:search]
  end
  @products = @search.results
end

private
def set_product
  @product = Product.where(id: params[:id]).first
end

def product_params
  params.require(:product).permit(:name, :price, :type, :image1)
end

end


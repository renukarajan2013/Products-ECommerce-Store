class GamesController < ApplicationController

def show
	redirect_to '#'
end


def create
end



def update

   @product= Product.find(params[:id])

        @product.update(product_params)
        redirect_to browse_path
end


private
  def product_params
    #params.require(:product).permit(:name ,:price, :category_id, :image)
    params.require(:game).permit(:name ,:price, :type, :image)
  end

end


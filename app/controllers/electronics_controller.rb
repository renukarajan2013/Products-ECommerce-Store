class ElectronicsController < ApplicationController
def show
  @electronics = Electronics.where(params[:product_id])
end

def create
end

def update
  @electronics=Electronics.find(params[:id])
  @electronics.update(electronics_params)
  redirect_to browse_url
end

private
def electronics_params
  params.require(:electronics).permit(:name ,:price, :type, :image1)
end

end

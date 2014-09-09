class ElectronicsController < ApplicationController
def show
  @electronics = Electronics.where(params[:product_id])
end
end

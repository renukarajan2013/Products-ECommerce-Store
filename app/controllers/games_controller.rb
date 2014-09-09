class GamesController < ApplicationController



def show
  @game = Game.where(params[:product_id])
end

end

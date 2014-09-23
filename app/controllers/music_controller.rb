class MusicController < ApplicationController

def show
  redirect_to '#'
end

def create
end

def update
  @music=Music.find(params[:id])
  @music.update(music_params)
  redirect_to browse_url
end

private
  def music_params
    params.require(:music).permit(:name ,:price, :type, :image1)
  end

end


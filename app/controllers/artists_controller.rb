class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def new
  end

  def create
    artist = Artist.create(artist_params)
    redirect_to "/artists"
  end
  
  def edit
    @artist = Artist.find(params[:id])
    # bucket that takes data we are dealing with and makes it available for us in the controller
  end

  def update
    @artist = Artist.find(params[:id])

    @artist.update(artist_params)
    redirect_to '/artists'
  end

private
# security advantage
# good encapsulation
  def artist_params
    # strong params
    # helper method
    params.permit(:name)
    # artist params is a method
    # permit is going to pull out key value pair
  end
end
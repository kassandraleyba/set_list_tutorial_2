class SongsController < ApplicationController
  # inheriting from application controller makes it a controller
  def index
    @songs = Song.all
    # instance variable to access songs from the erb file
    # accessible because erb tag is also an instance variable
  end
end
class ArtistsController < ApplicationController

  layout "soundrock"

  def index
    @title = "All artists"
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by_pretty_url params[:pretty_url]
    raise ActionController::RoutingError.new('Not Found') unless @artist
    @title = @artist.name
  end

end

class ReleasesController < ApplicationController
  layout "soundrock"

  def index
    @title = "All releases"
    @items = Release.all
  end

  def type
    if params[:type]
      type = ReleaseType.find_by_pretty_url(params[:type])
      @title = type.name
      @items = type.releases
      render :index
    else
      render :action => :index
    end
  end

  def show
    @release = Release.find params[:id]
    @title = @release.name
  end
end

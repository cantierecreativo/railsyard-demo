class PagesController < ApplicationController
  layout "soundrock"

  def home
    @title = "Home"
    @latest_releases = Release.limit(2)
  end

  def about
    @title = "About Us"
  end

  def contact
    @title = "Contact Us"
  end
end

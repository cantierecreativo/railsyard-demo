class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_settings

  protected
  def get_settings
    @settings = Settings.instance
  end
end

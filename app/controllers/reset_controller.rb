class ResetController < ApplicationController
  # please forgive me
  def demo
    %x(rake db:clear)
    %x(rake db:seed)
    render :text => "OK"
  end
end

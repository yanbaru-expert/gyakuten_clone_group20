class LiveCordingsController < ApplicationController

  def index
    @live_cordings = LiveCording.all.page(params[:page]).per(10)
  end

end

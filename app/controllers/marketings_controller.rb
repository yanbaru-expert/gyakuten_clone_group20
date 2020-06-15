class MarketingsController < ApplicationController
  def index
    @marketings = Marketing.all
  end
end

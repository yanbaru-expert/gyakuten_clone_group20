class MoniesController < ApplicationController
  def index
    @monies = Money.all
  end
end

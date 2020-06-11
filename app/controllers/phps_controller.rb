class PhpsController < ApplicationController
  def index
    @phps = Php.all
  end
end

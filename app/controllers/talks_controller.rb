class TalksController < ApplicationController
    def index
        @talks = Talk.all
        @talks = Talk.all.page(params[:page]).per(10)
    end
end
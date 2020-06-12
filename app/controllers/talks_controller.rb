class TalksController < ApplicationController
    def index
        @talks = Talk.all
        @talks = Talk.all.page(params[:page]).per(1)
    end
end
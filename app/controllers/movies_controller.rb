class MoviesController < ApplicationController
    def index
        @movies = Movie.all
        @movies = Movie.all.page(params[:page]).per(4)
    end
end

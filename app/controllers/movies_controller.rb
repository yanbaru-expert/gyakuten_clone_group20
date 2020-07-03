class MoviesController < ApplicationController
    def index
        @movies = Movie.all
        @movies = Movie.all.page(params[:page]).per(10)
        @watched_movies_id = current_user.watched_movies.pluck(:movie_id)
    end
end

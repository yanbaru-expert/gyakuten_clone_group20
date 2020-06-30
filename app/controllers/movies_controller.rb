class MoviesController < ApplicationController
    def index
        @movies = Movie.all
        @movies = Movie.all.page(params[:page]).per(10)
    end

    def update
      movie = Movie.find(params[:id])
      if movie.button == "視聴済みにする"
        movie.button = "視聴済みを解除"
        movie.save
        @movies = Movie.all.order(id: "ASC")
        @movies = Movie.all.order(id: "ASC").page(params[:page]).per(18)
        render action: :index
      else
        movie.button = "視聴済みにする"
        movie.save
        @movies = Movie.all.order(id: "ASC")
        @movies = Movie.all.order(id: "ASC").page(params[:page]).per(18)
        render action: :index
      end
    end
end

class EditMoviesController < ApplicationController
  def index
    @edit_movies = EditMovie.all
  end
end

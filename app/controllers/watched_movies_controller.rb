class WatchedMoviesController < ApplicationController
  def create
      @movie = current_user.watched_movies.create!(movie_id: params[:movie_id])
      @movie.save
  end

  def destroy
      @movie = current_user.watched_movies.find_by(movie_id: params[:movie_id])
      @movie.destroy!
  end
end

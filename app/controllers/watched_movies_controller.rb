class WatchedMoviesController < ApplicationController
    before_action :set_post
  def create
      @movie = current_user.watched_movies.create!(movie_id: params[:movie_id])
      @movie.save
  end

  def destroy
      @movie = current_user.watched_movies.find_by(movie_id: params[:movie_id])
      @movie.destroy!
  end

  def set_post
      @watched_movies_id = current_user.watched_movies.pluck(:movie_id)
  end
end

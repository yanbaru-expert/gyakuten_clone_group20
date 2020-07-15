class WatchedMoviesController < ApplicationController
    before_action :set_post
  def create
      current_user.watched_movies.create!(movie_id: params[:movie_id])
  end

  def destroy
      current_user.watched_movies.find_by(movie_id: params[:movie_id]).destroy!
  end

  private

  def set_post
      @watched_movies_id = current_user.watched_movies.pluck(:movie_id)
      @movie = Movie.find(params[:movie_id])
  end
end

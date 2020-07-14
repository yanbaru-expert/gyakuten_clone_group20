class WatchedTextsController < ApplicationController
  before_action :set_post
  def create
    current_user.watched_texts.create!(text_id: params[:text_id])
  end

  def destroy
    current_user.watched_texts.find_by(text_id: params[:text_id]).destroy!
  end

  def set_post
    @text = Text.find(params[:text_id])
    @watched_texts_id = current_user.watched_texts.pluck(:text_id)
  end
end

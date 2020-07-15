class TextsController < ApplicationController
  def index
    @texts = Text.all
    @watched_texts_id = current_user.watched_texts.pluck(:text_id)
  end

  def show
    @text = Text.find(params[:id])
  end
end

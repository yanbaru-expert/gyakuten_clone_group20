class TextsController < ApplicationController
  def index
    @aws_texts = AwsText.all
  end
end

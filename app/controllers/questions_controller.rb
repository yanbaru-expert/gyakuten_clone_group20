class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(id: "DESC")
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "投稿しました。"
      redirect_to action: :index
    else
      @questions = Question.all.order(created_at: :desc)
      flash.now[:alert] = "投稿失敗しました。"
      render :index
    end
  end

  private
    def question_params
      params.require(:question).permit(:title, :detail)
    end
end

class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(id: "DESC")
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
    redirect_to action: :index
  end

  private
    def question_params
      params.require(:question).permit(:title, :detail)
    end
end

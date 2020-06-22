class QuestionsController < ApplicationController
  impressionist :actions => [:index]
  impressionist unique: [:session_hash]


  def index
    @questions = Question.all.order(id: "DESC")
    @question = Question.new
    impressionist(@question, nil ,unique: [:session_hash])
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "投稿しました。"
      redirect_to action: :index
    else
      @questions = Question.all.order(created_at: :desc)
      flash.now[:alert] = "投稿失敗しました。"
      render action: :index
    end
  end

  def show
    @question = Question.find(params[:id])
    @solution = Solution.new
    @solutions = @question.solutions
  end

  private
    def question_params
      params.require(:question).permit(:title, :detail)
    end
end

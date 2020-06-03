class SolutionsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @solution = @question.solutions.build(solution_params)

    if @solution.save
      redirect_back(fallback_location: questions_path)
    else
      redirect_back(fallback_location: questions_path)
    end
  end

  private

  def solution_params
    params.require(:solution).permit(:detail)
  end
end

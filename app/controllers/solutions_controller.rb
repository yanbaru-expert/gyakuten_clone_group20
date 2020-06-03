class SolutionsController < ApplicationController
  def create
    @solution = Solution.new(solution_params)
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

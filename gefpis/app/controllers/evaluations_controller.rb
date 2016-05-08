class EvaluationsController < ApplicationController
  def index
  	@evaluations = Evaluation.all
  	render "evaluations/index"
  end

  def new
  end

  def show
  	@evaluation = Evaluation.find(params[:id])

	  render "evaluations/show"
  end

  def edit
  end
end

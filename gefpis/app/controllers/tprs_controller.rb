class TprsController < ApplicationController
  def index
  	@tprs = Tpr.all
  	render "tprs/index"
  end

  def new
  end

  def show
  	@tpr = Tpr.find(params[:id])

	  render "tprs/show"
  end

  def edit
  end
end

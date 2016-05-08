class WorksheetsController < ApplicationController
  def index
  	@worksheets = Worksheet.all
  	render "worksheets/index"
  end

  def new
  end

  def show
  	@worksheet = Worksheet.find(params[:id])

	  render "worksheets/show"
  end

  def edit
  end
end

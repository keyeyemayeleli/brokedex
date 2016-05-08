class LessonsController < ApplicationController
  def index
  	@lessons = Lesson.all
  	render "lessons/index"
  end

  def new
  end

  def show
  	@lesson = Lesson.find(params[:id])

	  render "lessons/show"
  end

  def edit
  end
end

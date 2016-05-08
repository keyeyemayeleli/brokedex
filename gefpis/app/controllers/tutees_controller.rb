class TuteesController < ApplicationController
  def index
	  @tutees = Tutee.all
  	render "tutees/index"
  end

  def new
    @tutee = Tutee.new

    render "tutees/new"
  end

  def create
    @tutee = Tutee.new(tutee_params)
    if @tutee.save
      redirect_to tutee_path(@tutee.id)
    else
      render "tutees/new"
    end
  end


  def show
  	@tutee = Tutee.find(params[:id])

	render "tutees/show"
  end

  def edit
  end

  def tutee_params
    params.require(:tutee).permit!
  end
end

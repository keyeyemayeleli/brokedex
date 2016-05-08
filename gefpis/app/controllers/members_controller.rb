class MembersController < ApplicationController
  def index
    if params[:arm]
      @members = Member.where(:arm => params[:arm])
    else
      @members = Member.all
    end
    render "members/index"
  end

  def new
    @member = Member.new
    @scholarships = ['None', 'Financial Aid', 'Academic']

    render "members/new"
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to position_path(@member.id)
    else
      render "member/new"
    end
  end

  def show
  	@member = Member.find(params[:id])

	  render "members/show"
  end

  def edit
  end
end

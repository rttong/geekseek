class InterestsController < ApplicationController
 
  layout "dashboard"

  def index
    if current_user.volunteer
      @projects = current_user.volunteer.projects_by_state(params[:state])
    else
      @projects = []
    end
  end

  def new
    @interest = Interest.new
  end

  def create
    @interest = Interest.new
    @project = Project.find params[:interest][:project_id]

    @interest.volunteer = current_user.volunteer
    @interest.project = @project
    @interest.message = params[:interest][:message]
    if @interest.save
      redirect_to @project
    else
      render :new
    end
  end

  def edit
  end

  def update
    @interest = Interest.find params[:id]
    @interest.update_attributes(:status => params[:status])
  end

end

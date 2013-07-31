class InterestsController < ApplicationController  

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

end
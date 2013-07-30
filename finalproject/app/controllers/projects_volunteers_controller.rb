class ProjectVolunteerController < ApplicationController  

  def new
    @project = current_user.projects.build(params[:id])       
    @project.save
  end


end
class InterestsController < ApplicationController  

  def new
    @interest = Interest.new(volunteer_id: current_user.id, project_id: params[:id])
    @interest.save
  end

  def create
    @interest = Interest.new(current_user.id,params[:id])
    @interest.save
  end

end
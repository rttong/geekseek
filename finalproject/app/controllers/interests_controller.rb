class InterestsController < ApplicationController  

  def new
    @interest = Interest.new(current_user.id,params[:id])
    @interest.save
  end


end
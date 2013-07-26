class SessionsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    if current_user.profile_type == 'V'
      @volunteer = Volunteer.find_by_user_id(current_user.id)
      redirect_to 'volunteer/show'
    else
      @organization = Organization.find_by_user_id(current_user.id)
      redirect_to 'organization/show'
  end
end
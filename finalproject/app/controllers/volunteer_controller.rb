class VolunteersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    redirect_to 'volunteer/show'
  end
end
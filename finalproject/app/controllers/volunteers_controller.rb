class VolunteersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @volunteer = @user.volunteer
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.create(params[:volunteer])
  end

  def edit
    @volunteer = current_user.volunteer
   # @volunteer = User.find(params[:id])
    
  end

  def update
    @volunteer = Volunteer.find(params[:id])
    @volunteer.update_attributes(params[:volunteer])
  end

end

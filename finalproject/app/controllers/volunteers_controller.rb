class VolunteersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_volunteer

  layout "dashboard"

  def show
  end

  def new
  end

  def create
    @volunteer.attributes = params[:volunteer]
    @volunteer.save
  end

  def edit
  end

  def update
    @volunteer.update_attributes(params[:volunteer])
  end

  def find_volunteer
    @volunteer = current_user.volunteer || current_user.build_volunteer
  end

end

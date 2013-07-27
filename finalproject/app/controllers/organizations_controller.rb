class OrganizationsController < ApplicationController
  before_filter :authenticate_user!

   def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @organization = @user.organization
  end
end
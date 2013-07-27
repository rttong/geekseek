class OrganizationsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @organization = @user.organization
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.create(params[:organization])
    @organization.tags << tags
    redirect_to organization_path(@organization)
  end


end

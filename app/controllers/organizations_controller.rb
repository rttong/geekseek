class OrganizationsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_organization

  layout "dashboard"

  def show
  end

  def new
  end

  def create
    @organization.attributes = params[:organization]
    if @organization.save
      redirect_to organization_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @organization.update_attributes(params[:organization])
      redirect_to organization_path
    else
      render "edit"
    end
  end

  def find_organization
    @organization = current_user.organization || current_user.build_organization
  end

end

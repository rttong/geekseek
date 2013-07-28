class OrganizationsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :find_organization

  layout "user"

  def show
  end

  def new
  end

  def create
    @organization.attributes = params[:organization]
    @organization.save
  end

  def edit
  end

  def update
    @organization.update_attributes(params[:organization])
  end

  def find_organization
    @organization = current_user.organization || current_user.build_organization
  end

end

class ProjectsController < ApplicationController

  before_filter :find_organization
  before_filter :find_project, only: [:show, :edit, :update, :destroy]

  layout "project_dashboard"

  def index
    @projects = @organization.projects
    @projects = @projects.send(params[:state]) if params[:state]
    @projects
    @causes = Cause.all
    @categories = Category.all
    # @projects = @organization.projects.search(params[:search])
  end

  def show
  end

  def new
    @project = @organization.projects.build
  end

  def create
    @project = @organization.projects.build(params[:project])
    @project.save
  end

  def edit
  end

  def update
    @project.update_attributes(params[:project])
  end

  def destroy
    @project.destroy
  end

  private
  def find_organization
    @organization = current_user.organization
  end

  def find_project
    @project = @organization.projects.find(params[:id])
  end
end
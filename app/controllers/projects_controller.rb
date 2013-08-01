class ProjectsController < ApplicationController

  # before_filter :authenticate_user!, except: [:browse, :show]
  before_filter :find_organization #, except: [:browse]
  before_filter :find_project, only: [:edit, :update, :destroy]

  layout :set_layout

  def index
    @projects = @organization.projects
    @projects = @projects.send(params[:state]) if params[:state]
    @projects
  end

  def new
    @project = @organization.projects.build
  end

  def create
    @project = @organization.projects.build(params[:project])
    @project.save
  end

  def browse
    @projects = Project.search(params[:search])
    @causes = Cause.all
    @categories = Category.all
  end

  def show
    @project = Project.find(params[:id])
    @organizations = Organization.latest
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

  def find_project
    @project = @organization.projects.find(params[:id])
  end

  def find_organization
    if current_user == nil
      @organization = Organization.all
    else
      @organization = current_user.organization
    end
  end

  def set_layout
    if action_name == "browse"
      "project_dashboard"
    elsif action_name == "show"
      "application"
    else
      "dashboard"
    end
  end
end

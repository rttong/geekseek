class ProjectsController < ApplicationController

  before_filter :find_project, only: [:show, :edit, :update, :destroy]

  layout :set_layout

  def index
    @projects = Project.unscoped
    @projects = @projects.send(params[:state]) if params[:state]
    @projects
  end

  def browse
    @projects = Project.search(params[:search])
    @causes = Cause.all
    @categories = Category.all
  end

  def show
  end

  def new
    @project = current_user.organization.projects.build
  end

  def create
    @project = current_user.organization.projects.build(params[:project])
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

  def find_project
    @project = @organization.projects.find(params[:id])
  end

  def set_layout
    if action_name == "browse"
      "project_dashboard"
    else
      "dashboard"
    end
  end
end

class DashboardsController < ApplicationController
  before_filter :authenticate_user!

  def show
    render "dashboards/#{params[:name]}", layout: false
  end
end
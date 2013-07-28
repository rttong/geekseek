class DashboardsController < ApplicationController
  before_filter :authenticate_user!

  layout "dashboard"

  def show
    render "dashboards/#{params[:name]}"
  end
end
class DashboardsController < ApplicationController
  before_filter :authenticate_user!

  layout "user"

  def show
    render "dashboards/#{params[:name]}"
  end
end
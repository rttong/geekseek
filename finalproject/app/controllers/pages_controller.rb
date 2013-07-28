class PagesController < ApplicationController
  before_filter :authenticate_user!

  def show
    render "pages/#{params[:name]}", layout: false
  end
end
class UsersController < ApplicationController
	before_filter :authenticate_user!

	def index
    if @user
  		@users = User.all
    else
    p "**********************************"
    end
  end

	def show
    @user = User.find(params[:id])
  end

end

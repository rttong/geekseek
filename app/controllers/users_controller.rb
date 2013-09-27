class UsersController < ApplicationController
	before_filter :authenticate_user!

	def index
<<<<<<< HEAD
    # if
=======
>>>>>>> ee4d8210f73c92450e3cc855ae87d9d75d73bb47
		@users = User.all
	end

	def show
    @user = User.find(params[:id])
  end

end

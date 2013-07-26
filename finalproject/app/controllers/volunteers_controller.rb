class VolunteersController < ApplicationController
	before_filter :authenticate_volunteer!

	def index
		@volunteers = Volunteer.all
	end

	def show
		@volunteer = Volunteer.find(params[:id])
	end
end
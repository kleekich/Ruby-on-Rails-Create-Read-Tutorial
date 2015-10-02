class UsersController < ApplicationController
	
	def index
		@users = User.all	
	end

	def new
		@user = User.new
	end

	def create
		User.create user_params
		redirect_to :users
	end

	def user_params 
		params.require(:user).permit(:first_name, :last_name)
	end

	def show
		@user = User.find params[:id]
		
	end
end

class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(
									@first_name = :first_name,
									@last_name = :last_name,
									@email = :email,
									@password = :password
									)
		if @user.save
			redirect_to '/users'
		end
	end

end

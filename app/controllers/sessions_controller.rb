class SessionsController < ApplicationController
	def new
		
	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])	
			session[:user_id] = user.id
			redirect_to "/question_nodes/1"
		end
	end	

	 def destroy
    session[:user_id] = nil
    redirect_to "/"
  end

end
class SessionsController < ApplicationController
	def new
		# user = User.find_by(email: params[:email])
		# 	if user && user.authenticate(params[:password])	
		# 		@carted_products.status == "incomplete"
		# 	end
	end

	def create
		user = User.find_by(email: params[:email])
		if user && user.authenticate(params[:password])	
			session[:user_id] = user.id
			redirect_to "/question_nodes/1"
		else
			redirect_to '/login'
		end
	end	

	# def destroy
	# 	carted_product = CartedProduct.find(params[:id])
	# 	carted_product.update(status: "incomplete")
 #    session[:user_id] = nil
 #    redirect_to "/"
 #  end

	def destroy
		session[:user_id] = nil
		redirect_to "/"
	end

end

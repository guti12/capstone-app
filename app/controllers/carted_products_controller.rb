class CartedProductsController < ApplicationController

	def create
	    current_user.compile_cart
	    @carted_products = current_user.carted_products.where(status: "carted")
	    redirect_to "/carted_products"
	end

end

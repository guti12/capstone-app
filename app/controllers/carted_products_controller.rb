class CartedProductsController < ApplicationController
	def index
    @carted_products = current_user.carted_products.where(status: "carted")
	end

	def compile
    current_user.compile_cart
    redirect_to "/carted_products"
	end

end

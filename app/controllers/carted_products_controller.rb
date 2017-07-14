class CartedProductsController < ApplicationController
	def index
    @carted_products = current_user.carted_products.where(status: "carted")
	end

	def compile
    current_user.compile_cart
    redirect_to "/carted_products"
	end

	def destroy
		@carted_product = CartedProduct.find(params[:id])
		@carted_product.update(status: "incomplete")
		redirect_to "/logout"
	end

end

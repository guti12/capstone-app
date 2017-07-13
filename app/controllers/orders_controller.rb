class OrdersController < ApplicationController
  def create
    carted_products = CartedProduct.where(status: "carted")
    
    @order = Order.new( user_id: current_user.id )
    @order.save

    carted_products.update_all(status: "purchased", order_id: @order.id )
    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find(params[:id])
  end
end

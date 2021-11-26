class OrdersController < ApplicationController
  def create
    @order = Order.create(user: current_user)
  end

  def pay
    @order = Order.find(params[:id])
    @order.update(status: "paid")
    @user = current_user
    Order.create(
        user: current_user,
        status: "pending"
      )
    redirect_to cart_path
  end
end

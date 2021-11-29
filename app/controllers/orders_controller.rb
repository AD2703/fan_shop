class OrdersController < ApplicationController
  def create
    @order = Order.create(user: current_user)
  end

  def pay
    @order = Order.find(params[:id])
    @order_items = @order.order_items
    @order.update(status: "paid")
    @order_items.each do |order_item|
      order_item.update(status: "paid")
    end
    @user = current_user
    Order.create(
        user: current_user,
        status: "pending"
      )
    redirect_to cart_path
  end
end

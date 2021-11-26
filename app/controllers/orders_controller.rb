class OrdersController < ApplicationController
  def create
    @order = Order.create(user: current_user)
  end
end

class OrdersController < ApplicationController
  def create
    @order = Order.create(user: current_user)
    @total_price = 0
    if @order.order_items
      @order.order_items.each do |oi|
        @total_price += oi.value
      end
    end
    @order.total_price = @total_price
  end
end

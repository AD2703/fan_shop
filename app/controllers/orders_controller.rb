class OrdersController < ApplicationController

  def index
    @orders = Order.all.where(status: "paid", user: current_user)
  end

  def create
    @order = Order.create(user: current_user)
  end

  def show
    @order = current_user.orders.find(params[:id])
    @order.update(status: "paid")
    @order.order_items.each do |oi|
      oi.update(status: "paid")
    end
  end

  def pay
    @order = Order.find(params[:id])
    @order_items = @order.order_items
    # @order.update(status: "paid")
    # @order_items.each do |order_item|
    #   order_item.update(status: "paid")
    # end

    @line_items_array = @order_items.map do |order_item|
      {
        name: order_item.product.name,
        amount: (order_item.product.price * 100).to_i,
        currency: "eur",
        quantity: order_item.quantity
      }
    end

    @user = current_user
    # @order.update!(amount: ...)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: @line_items_array,
      success_url: "https://www.fanshop.digital/orders/#{@order.id}",
      cancel_url: "https://www.fanshop.digital/orders/#{@order.id}"
    )

    @order.update!(checkout_session_id: session.id)
    @order.update!(total_price: params[:total_price])
    redirect_to new_order_payment_path(@order)
  end
end

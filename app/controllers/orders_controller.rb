class OrdersController < ApplicationController
  def create
    @order = Order.create(user: current_user)
  end

  def show
    @order = current_user.orders.find(params[:id])
    @order.update(status: "paid")
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
        name: order_item.id,
        images: [order_item.product.photo.key],
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
      success_url: order_url(@order),
      cancel_url: order_url(@order)
    )

    @order.update!(checkout_session_id: session.id)
    redirect_to new_order_payment_path(@order)
  end
end

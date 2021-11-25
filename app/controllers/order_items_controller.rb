class OrderItemsController < ApplicationController
  def create
    @order_item = OrderItem.new(order_item_params)
    @order_item.order = Order.find(params[:order_id])
    @order_item.value = params[:order_item][:quantity] * @order_item.product.price
    @order_item.save

    redirect_to campaign_campaign_products_path(@order_item.campaign)
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity, :size, :campaign_id, :product_id)
  end
end

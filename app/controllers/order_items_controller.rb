class OrderItemsController < ApplicationController
  def create
    @cp = CampaignProduct.find(params[:campaign_product_id])
    @order = Order.find(params[current_user])
    @price = @cp.product.price
    @oi = Order.new(order_items_params)
    @oi.campaign_product = @cp
    @oi.order = @order
    @oi.value = (@oi.quantity * @price)
    @oi.save
    redirect_to dashboard_path
  end

  private

  def order_items_params
    params.require(:order_item).permit(:quantity, :size)
  end
end

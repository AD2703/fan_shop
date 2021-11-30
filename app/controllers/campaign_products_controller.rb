class CampaignProductsController < ApplicationController
  def create
    @product = Product.find(params[:campaign_product][:product_id])
    @campaign_product = CampaignProduct.new
    @campaign = Campaign.find(params[:campaign_id])
    @campaign_product.product = @product
    @campaign_product.campaign = @campaign
    @campaign_product.save
    redirect_to campaign_path(@campaign)
  end

  def destroy
    product = Product.find(params[:id])
    @campaign_product = CampaignProduct.where(product: product)[0]
    @campaign = @campaign_product.campaign
    @campaign_product.destroy
    redirect_to campaign_path(@campaign)
  end

  def show
    @campaign_product = CampaignProduct.find(params[:id])
    @product = @campaign_product.product
    @campaign = @campaign_product.campaign
    @order_item = OrderItem.new
    last_order = current_user.orders.last
    if last_order.nil? || last_order.status == "paid" || last_order.status == "rejected" || current_user.orders.empty?
      @order = Order.new(
        user: current_user,
        status: "pending"
      )
      @order.save
    elsif last_order.status == "pending"
      @order = last_order
    end
  end

  def index
    if params[:campaign_id].present?
      @campaign_products = CampaignProduct.where(campaign_id: params[:campaign_id])
    else
      @campaign_products = CampaignProduct.all
    end
  end
end

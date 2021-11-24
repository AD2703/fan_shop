class CampaignProductsController < ApplicationController


  def create
  end

  def show
    @product = Product.find(params[:campaign_product][:product_id])

    @campaign_product = CampaignProduct.new
    @campaign = Campaign.find(params[:campaign_id])
    @campaign_product.product = @product
    @campaign_product.campaign = @campaign
    @campaign.publish = true
    @campaign_product.save
    redirect_to dashboard_path
  end


end

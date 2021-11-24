class CampaignProductsController < ApplicationController
  def create
    @product = Product.find(params[:campaign_product][:product_id])
    @campaign_product = CampaignProduct.new
    @campaign = Campaign.find(params[:campaign_id])
    @campaign_product.product = @product
    @campaign_product.campaign = @campaign
    @campaign.publish = true
    @campaign_product.save
    redirect_to campaign_path(@campaign)
  end

  def destroy
    product = Product.find(params[:id])
    @campaign_product = CampaignProduct.where(product: product)[0]
    @campaign_product.destroy
    redirect_to campaign_path(@campaign)
  end

  def show
    @campaign_product = CampaignProduct.find(params[:id])
    @products = Product.find(params[:product_id])
    @campaign_product.products = @products
  end

  def index
    if params[:campaign_id].present?
      @campaign_products = CampaignProduct.where(campaign_id: params[:campaign_id])
    else
      @campaign_products = CampaignProduct.all
    end
  end
end

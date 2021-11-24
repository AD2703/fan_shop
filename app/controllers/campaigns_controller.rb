class CampaignsController < ApplicationController
  def show
    @campaign = Campaign.find(params[:id])
    @non_campaign_products = Products.where(user: current_user)
  end
end

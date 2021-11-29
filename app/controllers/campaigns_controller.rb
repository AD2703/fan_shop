class CampaignsController < ApplicationController
  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user = current_user
    if @campaign.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:id])
    @campaign.user = current_user
    @campaign.update(campaign_params)
    redirect_to dashboard_path
  end

  def show
    @campaign = Campaign.find(params[:id])
    @products = current_user.products - @campaign.products
    @campaign_product = CampaignProduct.new

  end

  def start
    @campaign = Campaign.find(params[:id])
    @campaign.update(state: "active")
    redirect_to dashboard_path
  end

  def finish
    @campaign = Campaign.find(params[:id])
    @campaign.update(state: "finished")
    @campaign.update(benefits: params[:benefits])
    redirect_to dashboard_path
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :duration_days, :active)
  end
end

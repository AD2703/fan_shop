class CampaignsController < ApplicationController
  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.user = current_user
    if @campaign.save
      # redirect_to dashboard_path(@campaign)
    else
      render :new
    end
  end

  def update
    @campaign = Campaign.find(params[:id])
    @campaign.user = current_user
    @campaign.update(campaign_params)
    # redirect_to dashboard_path(@campaign)
  end

  private

  def campaign_params
    params.require(:campaign).permit(:name, :duration_days, :active)
  end

end

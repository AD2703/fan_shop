class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @products = []
    @campaigns = @user.campaigns
    @campaigns.each do |campaign|
      campaign.products.each do |product|
        @products << product
      end
    end
  end
end

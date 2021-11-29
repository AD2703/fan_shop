class UsersController < ApplicationController
  def index
    @users = User.all.where(seller: true)
  end

  def show
    @user = User.find(params[:id])
    @products = []
    @campaigns = @user.campaigns.where(state: "active")
    @campaigns.each do |campaign|
      campaign.products.each do |product|
        @products << product
      end
    end
  end
end

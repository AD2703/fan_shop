class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard
    @user = current_user
    @products = @user.products
    @campaigns = @user.campaigns
    @orders = @user.orders
    @activecamp = @campaigns.where(active: true)
    @inactivecamp = @campaigns.where(active: false)
  end

  def home
  end

  def shop
    @user = User.find(params[:id])
  end

  def cart
    @user = current_user
  end
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard
    @user = current_user
    @products = @user.products
    @campaigns = @user.campaigns
    @orders = @user.orders
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

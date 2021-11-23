class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard
    @user = current_user
    @products = @user.products
    @campaigns = @user.campaigns
  end

  def home
  end

  def shop
    @user = User.find(params[:id])
  end
end

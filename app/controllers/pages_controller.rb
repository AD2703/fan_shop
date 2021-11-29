class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard
    @user = current_user
    @products = @user.products
    @campaigns = @user.campaigns
    @activecamp = @campaigns.where(state: "active")
    @inactivecamp = @campaigns.where(state: "inactive")
    @finishedcamp = @campaigns.where(state: "finished")
    @orders = Order.where(status: "paid")
    @user_order_items = []
    @orders.each do |order|
      order.order_items.each do |order_item|
        if order_item.campaign.user == @user
          @user_order_items << order_item
        end
      end
    end
    @sales = 0
    @user_order_items.each do |item|
      if item.value
        @sales += item.value.round(2)
      end
    end
  end

  def home
  end

  def shop
    @user = User.find(params[:id])
  end

  def cart
    @user = current_user
    @orders = Order.where(status: "pending", user: current_user)
    if @orders.empty?
      @order = Order.create(user: current_user, status: "pending")
    end
  end
end

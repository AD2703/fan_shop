class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.user = current_user
    @product.update(product_params)
    redirect_to dashboard_path
  end

  private

  def product_params
    params.require(:product).permit(:price, :name, :garment, :color, :publish, :photo)
  end

end

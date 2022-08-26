class OrdersController < ApplicationController
  before_action :set_order, only: :show
  def new
    @order = Order.new
    @product = Product.find(params[:product_id])
    @current_user_product = Product.where(user: current_user)
  end

  def show
    @order = Order.find(params[:id])
    @product = Product.find(@order.product_id)
    @my_sticker = Product.find(@order.my_stickers_id)
  end

  def create
    @order = Order.new
    @order.user = current_user
    product = Product.find(params[:product_id])
    @order.product = product
    my_sticker = Product.find(orders_params[:my_stickers_id])
    @order.my_stickers = my_sticker

    if @order.save
      redirect_to order_path(@order)
    else
      render :new, status: :unprocessable_entity #msg Cancelada
    end
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def orders_params
    params.require(:order).permit(:my_stickers_id)
  end
end

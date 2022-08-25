class OrdersController < ApplicationController
  before_action :set_order, only: :show
  def new
    @order = Order.new
    @product = Product.find(params[:product_id])
  end

  def show
  end

  def create
    @order = Order.new
    @order.user = current_user
    product = Product.find(params[:product_id])
    @order.product = product
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
end

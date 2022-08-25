class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.where.not(user: current_user)
  end

  def my_stickers
    @products = Product.where(user: current_user)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user

    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    product = Product.find(params[:id])
    my_sticker = Product.find(params[:id])

    product_user = product.user
    product.user = my_sticker.user
    my_sticker.user = product_user

    product.save
    my_sticker.save

    redirect_to product_path(@product)
  end

  def destroy
    @product.destroy
    redirect_to my_stickers_products_path, status: :see_other
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :sticker, :url, :category)
  end
end

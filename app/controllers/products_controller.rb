class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    # if @product.save
    #   redirect_to product_path(@product)
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def edit
  end

  def update
    @product.update(product_params)
    # redirect_to product_path(@product)
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :sticker, :url, :category)
  end
end

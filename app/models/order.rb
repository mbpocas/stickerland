class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :my_stickers, class_name: 'Product'
  after_create :update_stickers

  private

  def update_stickers
    product = self.product
    my_sticker = self.my_stickers
    product_user = product.user
    product.user = my_sticker.user
    my_sticker.user = product_user
    product.save
    my_sticker.save
  end
end

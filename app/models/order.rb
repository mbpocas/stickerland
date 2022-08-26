class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :my_stickers, class_name: 'Product'
  # after_create :update_stickers
end

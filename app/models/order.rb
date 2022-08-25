class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :my_stickers, class_name: 'Product'
end

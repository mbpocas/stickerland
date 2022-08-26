class Product < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_one_attached :photo

  CATEGORIES = %w[Fifa Stadiums Teams].freeze
  validates :category, inclusion: { in: CATEGORIES }
  validates :sticker, presence: true
end

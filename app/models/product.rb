class Product < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy

  CATEGORIES = %w[Fifa Stadiums Teams].freeze
  validates :category, inclusion: { in: CATEGORIES }
  validates :sticker, presence: true
end

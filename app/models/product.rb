class Product < ApplicationRecord
  belongs_to :user
  has_many :campaign_products
  has_many :campaigns, through: :campaign_products
  has_one_attached :photo
  validates :price, presence: true, numericality: true
  validates :template, presence: true, inclusion: { in: %w[t-shirt hoodie long-sleeve] }
  validates :color, presence: true, inclusion: { in: %w[white grey black green beige pink] }
  presence :publish, presence: true
end
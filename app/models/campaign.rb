class Campaign < ApplicationRecord
  belongs_to :user
  has_many :campaign_products
  has_many :order_items
  has_many :products, through: :campaign_products
  has_one_attached :photo
  validates :name, presence: true
  validates :duration_days, numericality: true, inclusion: 5..30
end

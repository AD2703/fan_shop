class Campaign < ApplicationRecord
  belongs_to :user
  has_many :campaign_products
  has_many :products, through: :campaign_products
  validates :name, presence: true
  validates :duration_days, numericality: true, inclusion: 5..30
end

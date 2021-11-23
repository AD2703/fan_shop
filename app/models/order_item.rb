class OrderItem < ApplicationRecord
  belongs_to :campaign_product
  belongs_to :order
  validates :size, presence: true, inclusion: { in: %w[S M L] }
end

class OrderItem < ApplicationRecord
  belongs_to :campaign
  belongs_to :product
  belongs_to :order
  validates :size, presence: true, inclusion: { in: %w[S M L] }
  validates :quantity, numericality: true, inclusion: 1..1000
end

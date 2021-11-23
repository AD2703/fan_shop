class OrderItem < ApplicationRecord
  belongs_to :campaign_product
  belongs_to :order
end

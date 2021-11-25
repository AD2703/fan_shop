class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  def payed?
    if Order.payment
      Order.status = "x"
    end
    Order.status.presence
  end
end

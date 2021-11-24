class Order < ApplicationRecord
  belongs_to :user

  def payed?
    if Order.payment
      Order.status = "x"
    end
    Order.status.presence
  end
end

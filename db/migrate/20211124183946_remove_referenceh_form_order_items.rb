class RemoveReferencehFormOrderItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :order_items, :campaign_product_id, :bigint
  end
end

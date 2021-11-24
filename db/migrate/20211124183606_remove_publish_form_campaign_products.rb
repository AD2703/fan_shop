class RemovePublishFormCampaignProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :campaign_products, :publish, :boolean
  end
end

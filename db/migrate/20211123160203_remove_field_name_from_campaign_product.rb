class RemoveFieldNameFromCampaignProduct < ActiveRecord::Migration[6.0]
  def change
    remove_column :campaign_products, :size, :string
  end
end

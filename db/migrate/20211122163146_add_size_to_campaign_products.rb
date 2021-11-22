class AddSizeToCampaignProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :campaign_products, :size, :string
  end
end

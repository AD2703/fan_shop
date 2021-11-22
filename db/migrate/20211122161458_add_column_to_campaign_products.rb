class AddColumnToCampaignProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :campaign_products, :publish, :boolean, default: true
  end
end

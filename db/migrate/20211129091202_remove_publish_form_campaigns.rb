class RemovePublishFormCampaigns < ActiveRecord::Migration[6.0]
  def change
    remove_column :campaigns, :publish, :boolean
  end
end

class RemoveActiveFormCampaigns < ActiveRecord::Migration[6.0]
  def change
    remove_column :campaigns, :active, :boolean
  end
end

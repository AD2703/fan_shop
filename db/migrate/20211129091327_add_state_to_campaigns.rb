class AddStateToCampaigns < ActiveRecord::Migration[6.0]
  def change
    add_column :campaigns, :state, :string, default: "inactive"
  end
end

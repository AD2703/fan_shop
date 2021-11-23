class AddColumnToCampaigns < ActiveRecord::Migration[6.0]
  def change
    add_column :campaigns, :publish, :boolean, default: true
  end
end

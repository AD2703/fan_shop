class AddBenefitsToCampaigns < ActiveRecord::Migration[6.0]
  def change
    add_column :campaigns, :benefits, :float, default: 0
  end
end

class AddColumnToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :publish, :boolean, default: true
  end
end

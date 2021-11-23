class AddColorToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :color, :string
  end
end

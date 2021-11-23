class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.float :price
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.string :garment

      t.timestamps
    end
  end
end

class AddNicknameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :seller, :boolean, default: false
    add_column :users, :nickname, :string
    add_column :users, :name, :string
    add_column :users, :description, :text
    add_column :users, :address, :string
  end
end

class AddColumnsFromUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_name, :string
    add_column :users, :description, :string
    add_column :users, :website, :string
  end
end

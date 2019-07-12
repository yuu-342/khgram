class AddColumnsUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :image, :string
    add_column :users, :is_deleted, :boolean
  end
end

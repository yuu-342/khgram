class AddColumnsPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :created_at, :timestamp
    add_column :photos, :updated_at, :timestamp
  end
end

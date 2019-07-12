class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos, force: true do |t|
      t.references :user
      t.text :comment
      t.string :url
    end
  end
end

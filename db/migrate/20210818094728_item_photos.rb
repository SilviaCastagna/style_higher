class ItemPhotos < ActiveRecord::Migration[6.0]
  def change
     create_table :item_photos do |t|
      t.string :image_url
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end

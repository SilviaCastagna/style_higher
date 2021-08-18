class CreateItemPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :item_photos do |t|

      t.timestamps
    end
  end
end

class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :image_data
      t.references :album, foreign_key: true
    end
  end
end

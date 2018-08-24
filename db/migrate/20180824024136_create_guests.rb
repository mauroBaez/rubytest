class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :invitation, foreign_key: true

      t.timestamps
    end
  end
end

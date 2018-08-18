class CreateWeddings < ActiveRecord::Migration[5.2]
  def change
    create_table :weddings do |t|
      t.string :groom_name
      t.string :groom_surname
      t.string :bride_name
      t.string :bride_surname

      t.timestamps
    end
  end
end

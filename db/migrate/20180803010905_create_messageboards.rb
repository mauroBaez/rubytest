class CreateMessageboards < ActiveRecord::Migration[5.2]
  def change
    create_table :messageboards do |t|
      t.string :name

      t.timestamps
    end
  end
end

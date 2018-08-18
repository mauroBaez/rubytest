class ChangePlaceNameToStringFromEvents < ActiveRecord::Migration[5.2]
  def change
    change_table :events do |t|
      t.change :place_name, :string
    end
  end
end

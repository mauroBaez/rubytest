class AddPlaceNameToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :place_name, :text
  end
end

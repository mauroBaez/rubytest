class AddPositionToGuests < ActiveRecord::Migration[5.2]
  def change
    add_column :guests, :position, :integer
    Guest.order(:updated_at).each.with_index(1) do |guest, index|
      guest.update_column :position, index
    end
  end
end

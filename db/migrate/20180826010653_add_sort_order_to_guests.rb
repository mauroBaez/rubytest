class AddSortOrderToGuests < ActiveRecord::Migration[5.2]
  def change
    add_column :guests, :sort_order, :integer
  end
end

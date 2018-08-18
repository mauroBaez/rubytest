class AddReferencesToMessageboard < ActiveRecord::Migration[5.2]
  def change
    add_reference :messageboards, :message, foreign_key: true
  end
end

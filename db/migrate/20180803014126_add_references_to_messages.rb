class AddReferencesToMessages < ActiveRecord::Migration[5.2]
  def change
    remove_reference :messageboards, :message, index: true, foreign_key: true
    add_reference :messages, :messageboard, foreign_key: true
  end
end

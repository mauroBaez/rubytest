class CreateInvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :invitations do |t|
      t.string :title
      t.boolean :sent
      t.datetime :sent_datetime

      t.timestamps
    end
  end
end

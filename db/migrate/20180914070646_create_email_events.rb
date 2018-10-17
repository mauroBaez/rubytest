class CreateEmailEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :email_events do |t|
      
      t.string :message_id
      t.string :event
      t.timestamp :timestamp
      t.integer  :invitation_id
      t.references :sent_email, foreign_key: true

      t.timestamps
    end
  end
end

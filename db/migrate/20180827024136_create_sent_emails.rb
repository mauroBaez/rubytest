class CreateSentEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :sent_emails do |t|
      
      t.string :message_id
      t.string :status
      t.integer  :invitation_id
      t.references :guest, foreign_key: true

      t.timestamps
    end
  end
end

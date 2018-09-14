class AddRecipientToSentEmails < ActiveRecord::Migration[5.2]
  def change
    add_column :sent_emails, :recipient, :string
  end
end

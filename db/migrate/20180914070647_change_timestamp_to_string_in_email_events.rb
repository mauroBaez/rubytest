class ChangeTimestampToStringInEmailEvents < ActiveRecord::Migration[5.2]
  def up
    change_column :email_events, :timestamp, :string
  end

  def down
    change_column :email_events, :timestamp, :datetime
  end
end

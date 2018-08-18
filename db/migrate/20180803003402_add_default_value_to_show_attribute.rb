class AddDefaultValueToShowAttribute < ActiveRecord::Migration[5.2]
  def change
    def up
      change_column :messages, :show, :boolean, default: false
    end

    def down
      change_column :messages, :show, :boolean, default: nil
    end
  end
end

class ChangeAddressToTextFromEvents < ActiveRecord::Migration[5.2]
  def change
    change_table :events do |t|
      t.change :address, :string
    end
  end
  
end

class AddColumn2sToWeddings < ActiveRecord::Migration[5.2]
  def change
    add_column :weddings, :gifts_info_content, :text
  end
end

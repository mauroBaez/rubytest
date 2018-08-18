class AddColumnsToWeddings < ActiveRecord::Migration[5.2]
  def change
    add_column :weddings, :wedding_details_title, :string
    add_column :weddings, :wedding_details_content, :text
    add_column :weddings, :invitation_details_content, :text
    add_column :weddings, :gifts_details_content, :text
    add_column :weddings, :gifts_details_content_btn_text, :string
  end
end

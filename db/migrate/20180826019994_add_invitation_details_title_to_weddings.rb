class AddInvitationDetailsTitleToWeddings < ActiveRecord::Migration[5.2]
  def change
    add_column :weddings, :invitation_details_title, :string
    
  end
end

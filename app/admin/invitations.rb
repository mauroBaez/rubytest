ActiveAdmin.register Invitation do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
menu false
menu false
breadcrumb do
    [
      
    ]
  end
controller do
  def permitted_params
    params.permit!
  end
  def update
    update! do |format, invitation|
      format.html { redirect_to edit_admin_invitation_path(resource) }
    end
  end
end

index :title => 'Invitaciones' do
  column "Invitaciones" do |invitation|
    link_to invitation.title, edit_admin_invitation_path(invitation)
  end
  column "Invitados" do |invitation|
    invitation.guests.collect{|t| t.name}.join(', ')
  end
  column "Cantidad de Invitados" do |invitation|
    invitation.guests.count
  end
end

show do |invitation|
    
    panel "Invitados" do
      
    end
end
sidebar "Estado de Envío", only: :edit do
  render 'status', { invitation: invitation }
end
form :title => :title do |f|
    
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :title , label: "Título de la Invitación"

    end
    f.inputs do
      f.has_many :guests, heading: 'Invitados',
                              allow_destroy: true,
                              new_record: true do |a|
        a.input :name, label: "Nombre del Invitado"
        a.input :email, label: "Email del Invitado"
        a.input :phone, label: "Teléfono movil del Invitado"
      end
        
    end
    f.actions
    #image_tag @invitation.cover_photo_url(:thumbnail).to_s, width: 300, class: "img-thumbnail file-upload-preview", id: "preview-cover-photo"
    
  end
end

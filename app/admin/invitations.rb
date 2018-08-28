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
      link_to('Invitaciones', '/admin/invitations')
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
  def lock
    lock! do |format, invitation|
      redirect_to edit_admin_invitation_path(resource)    
    end
  end
end

action_item :view, only: :edit do
  link_to 'Enviar por Mail', edit_admin_invitation_path(resource)+'?send=mail'
end

action_item :view, only: :edit do
  link_to 'Compartir por Whatsapp', edit_admin_invitation_path(resource)+'?send=whatsapp'
end

member_action :lock, method: :get do
  resource.lock!
  redirect_to resource_path, notice: "Locked!"
end

index :title => 'Invitaciones' do
  column "" do |invitation|
    invitation.id
  end
  column "Invitados" do |invitation|
    invitation.guests.collect{|t| t.name}.join('<br>').html_safe
  end
  column "Cantidad de Invitados", :sortable do |invitation|
    invitation.guests.count
  end
  column "" do |invitation|
    link_to "Editar", edit_admin_invitation_path(invitation)  
  end
end

show do |invitation|
    
    # renders app/views/admin/posts/_some_partial.html.erb
      render 'send', { invitation: invitation }

end
#sidebar "Estado de Envío", only: :edit do
#  render 'status', { invitation: invitation }
#end
form :title => 'Editar Invitación' do |f|
    
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :title , label: "Título de la Invitación"

    end
    f.inputs 'Invitados' do
      f.has_many :guests, sortable: :sort_order, heading: false, allow_destroy: true, new_record: 'Agregar Invitado' do |a|
        a.input :name, label: "Nombre del Invitado"
        a.input :email, label: "Email del Invitado"
        a.input :phone, label: "Teléfono movil del Invitado"
      end
        
    end
    f.actions
    #image_tag @invitation.cover_photo_url(:thumbnail).to_s, width: 300, class: "img-thumbnail file-upload-preview", id: "preview-cover-photo"
    
  end
end

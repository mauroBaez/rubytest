ActiveAdmin.register Message do
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

controller do
  def permitted_params
    params.permit!
  end
  def update
    update! do |format, message|
      format.html { redirect_to edit_admin_message_path(resource) }
    end
  end
end

index do
  column "Remitente" do |message|
    link_to message.author ,  edit_admin_message_path(message)
  end
  column "Fecha" do |message|
    message.created_at.to_date
  end
  column "Aprobado para Publicación" do |message|
    message.show

  end
  
  column "" do |resource|
    links = ''.html_safe
    links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), :class => "member_link edit_link"
    links += link_to I18n.t('active_admin.delete'), resource_path(resource), :method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'), :class => "member_link delete_link"
    links
  end
end

form do |f|
  f.inputs do
    f.input :messageboard_id

    f.input :author, label: "Nombre del Evento"
    f.input :content, label: "Mensaje"
    f.input :show, label: "Aprobado para Publicación"
    
  end
  f.actions
end
end

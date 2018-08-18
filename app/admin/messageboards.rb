ActiveAdmin.register Messageboard do
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
  def create
    super do |format|
      redirect_to collection_url and return if resource.valid?
    end
  end

  def update
    update! do |format, messageboard|
      format.html { redirect_to edit_admin_messageboard_path(resource) }
    end
  end
end

index do
  column "Título del Panel de Mensajes" do |messageboard|
    link_to messageboard.name, edit_admin_messageboard_path(messageboard)
  end
  
  actions
end

show do
    panel "Table of Contents" do
      table_for messageboard.messages do
        column :id
        column :author
        column :created_at
      end
    end
end

form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :name, label: "Título del Panel de Mensajes"
      
    end
    f.inputs do
      f.has_many :messages, heading: 'Mensajes',
      new_record: false do |a|
        a.input :author, label: "Remitente/s"
        a.input :content, label: "Contenido del Mensaje"
        a.input :show, label: "Mostrar en el Sitio"
      end
    end
    
    f.actions
    #image_tag @album.cover_photo_url(:thumbnail).to_s, width: 300, class: "img-thumbnail file-upload-preview", id: "preview-cover-photo"
    
  end
end

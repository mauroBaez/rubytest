ActiveAdmin.register Wedding do
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
breadcrumb do
    [
      
    ]
  end
controller do
  def permitted_params
    params.permit!
  end
  def update
    update! do |format, wedding|
      format.html { redirect_to edit_admin_wedding_path(resource) }
    end
  end
end


index do
  column "Evento" do |wedding|
    
  end
  
end

form do |f|
  
  tabs do 
    tab 'Novios' do
      f.inputs 'Detalle de los Novios' do
        f.input :bride_name, label: "Nombre de la Novia"
        f.input :bride_surname, label: "Apellido de la Novia"
        f.input :groom_name, label: "Nombre del Novio"
        f.input :groom_surname, label: "Apellido del Novio"
        f.input :wedding_details_title, label: "Título de la Presentación de los Novios"
        f.input :wedding_details_content, as: :medium_editor, label: "Contenido de la Presentación de los Novios"

      end
    end

    tab 'Invitación' do
      f.inputs 'Detalle de la Invitación' do
        f.input :invitation_details_title, label: "Título de la Invitación"
        f.input :invitation_details_content, as: :medium_editor, label: "Contenido de la Invitación"
      end
    end
    tab 'Regalos' do
      f.inputs 'Detalle de los Regalos' do
        f.input :gifts_details_content, as: :medium_editor, label: "Contenido de la sección de Regalos"
        f.input :gifts_details_content_btn_text, label: "Contenido del botón para abrir la sección de Regalos"
        f.input :gifts_info_content, as: :medium_editor, label: "Información para realizar transferencias bancarias"
      end
      
    end
    
  end
  f.actions
end
  
  
  
end
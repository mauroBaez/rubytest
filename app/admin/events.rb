ActiveAdmin.register Event do
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
  config.filters = false

controller do
  def permitted_params
    params.permit!
  end
  def update
    update! do |format|
      format.html { render :edit }
    end
  end
end

index :title => 'Eventos del Casamiento' do
  column "Evento" do |event|
    link_to event.name ,  edit_admin_event_path(event)
  end
  column "Fecha" do |event|
    event.datetime.to_date
  end
  column "Hora" do |event|
    event.datetime.strftime("%I:%M %p") 
    
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
    f.input :wedding_id, label: "weddi"
    f.input :name, label: "Nombre del Evento"
    f.input :datetime, as: :date_time_picker, label: "Fecha y hora del Evento"
    f.input :place_name, label: "Nombre del lugar del Evento"
    f.input :address, label: "Dirección del lugar del Evento"
    f.latlng lang: :es, label: "Ubicación del lugar del Evento en el Mapa", map: :google, height: 500, loading_map: true, api_key: 'AIzaSyB_bHEjt-UWoAiwgrTrS2Cc-i9UXEvUf6Y'
    f.input :lat, as: :hidden
    f.input :lng, as: :hidden

  end
  f.actions
end
end

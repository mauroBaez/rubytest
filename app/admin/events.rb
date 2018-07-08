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
controller do
  def permitted_params
    params.permit!
  end
end

form do |f|
  f.inputs do
    f.input :name
    f.input :datetime, as: :date_time_picker
    f.latlng lang: :es, map: :google, height: 500, loading_map: true, api_key: 'AIzaSyB_bHEjt-UWoAiwgrTrS2Cc-i9UXEvUf6Y'
    f.input :lat
    f.input :lng
  end
  f.actions
end
end

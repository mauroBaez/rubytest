ActiveAdmin.register Album do
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
    update! do |format, album|
      format.html { redirect_to edit_admin_album_path(resource) }
    end
  end
end

index do
  column "Título de la Galería" do |album|
    link_to album.name, edit_admin_album_path(album)
  end
  
  actions
end

show do
    panel "Table of Contents" do
      table_for album.photos do
        column :id
        column :title
        column :link
      end
    end
end

form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :name , label: "Título de la Galería de Fotos"
      
    end
      panel "Fotos" do
        f.label "Agregar Fotos"
        f.file_field "files[]", multiple: true, accept: ImageUploader::ALLOWED_TYPES.join(","), id: "album-photos-field", data: { template: "template-photo", upload_list: "album-photo-list", upload_server: upload_server }
        br
        br
        hr
        br
        br
        ol :class => 'list-unstyled file-upload-list', :id => 'album-photo-list' do 
          
          render partial: "albums/phototemplate"
          columns do
          resource.photos.each_with_index do |photo, idx|
              column max_width: "260px", min_width: "260px" do
                panel "" do
                render partial: "albums/photo", locals: { photo: photo, idx: idx }
              end
            end
        end
            
        end
        end
        
    end
    f.actions
    #image_tag @album.cover_photo_url(:thumbnail).to_s, width: 300, class: "img-thumbnail file-upload-preview", id: "preview-cover-photo"
    
  end
end

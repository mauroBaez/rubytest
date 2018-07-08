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
controller do
  def permitted_params
    params.permit!
  end
end

form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :name
      f.li :class => 'image-preview' do 
        f.label :cover_photo
        f.hidden_field :cover_photo, value: resource.cached_cover_photo_data, id: "album-cover-photo-upload-result"
        f.file_field :cover_photo, accept: ImageUploader::ALLOWED_TYPES.join(","), data: { upload_server: upload_server, preview_element: "preview-cover-photo", upload_result_element: "album-cover-photo-upload-result" }
        img(src: resource.cover_photo_url(:thumbnail).to_s, id: "preview-cover-photo")
      end
      f.li :class => 'images-preview' do 
        f.label :photos
        f.file_field "files[]", multiple: true, accept: ImageUploader::ALLOWED_TYPES.join(","), id: "album-photos-field", data: { template: "template-photo", upload_list: "album-photo-list", upload_server: upload_server }
        f.ul :class => 'list-unstyled file-upload-list', :id => 'album-photo-list' do 
          render partial: "albums/phototemplate"
          resource.photos.each_with_index do |photo, idx|
            render partial: "albums/photo", locals: { photo: photo, idx: idx }
          end
        end
      end
    end          # builds an input field for every attribute
    f.actions
    #image_tag @album.cover_photo_url(:thumbnail).to_s, width: 300, class: "img-thumbnail file-upload-preview", id: "preview-cover-photo"
    
  end
end

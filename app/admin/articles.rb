ActiveAdmin.register Article do
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
permit_params :title, :body, :user_id,:category_ids => []
  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs do
      f.input :user_id,  :as => :hidden, :input_html => { :value => current_user.id }
      f.input :title
      f.input :body
      f.input :category_ids, as: :tags, collection: Category.all, display_name: :title

    end          # builds an input field for every attribute
    f.actions    
  end
end

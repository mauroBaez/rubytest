Rails.application.routes.draw do
  resources :guests
  
  resources :invitations
  get '/admin/invitations/:id/quick_send' => 'admin/invitations#quick_send', as: :admin_invitation_quick_send
  post '/admin/invitations/:id/quick_send_mails' => 'admin/invitations#quick_send_mails', as: :admin_invitation_quick_send_mails
  
  post '/admin/invitations/:id/quick_order' => 'admin/invitations#quick_order', as: :admin_invitation_quick_order

  get '/admin/invitations/:id/guests/:guest_id/quick_remove' => 'admin/invitations#quick_remove', as: :admin_guest_quick_remove

  get '/admin/invitations/:id/new/quick_add' => 'admin/invitations#quick_add', as: :admin_guest_quick_add
  post '/admin/invitations/:id/quick_create' => 'admin/invitations#quick_create', as: :admin_guest_quick_create
  get '/admin/invitations/:id/quick_sort' => 'admin/invitations#quick_sort', as: :admin_invitation_quick_sort

  
  resources :weddings
  resources :messageboards
  root to: 'pages#index'
  resources :messages
  resources :events
  devise_for :users, :controllers => { registrations: 'registrations' }  
  ActiveAdmin.routes(self)

  resources :articles do
      resources :comments

  end
  resources :contacts
  resources :categories
  resources :albums
  

  get 'pages/contact'
  get 'pages/about'
  
  mount Shrine.upload_endpoint(:cache) => "/upload"
  #mount ImageUploader::UploadEndpoint => "/upload"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

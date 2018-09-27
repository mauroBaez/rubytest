Rails.application.routes.draw do
  
  root to: 'pages#index'
  devise_for :users, :controllers => { registrations: 'registrations' }  
  ActiveAdmin.routes(self)
  
  
  get '/admin/invitations/quick_events' => 'admin/invitations#quick_events', as: :admin_invitation_quick_events
  
  get '/admin/invitations/:id/quick_send' => 'admin/invitations#quick_send', as: :admin_invitation_quick_send
  get '/admin/invitations/:id/quick_whatsapp' => 'admin/invitations#quick_whatsapp', as: :admin_invitation_quick_whatsapp
  post '/admin/invitations/:id/quick_send_mails' => 'admin/invitations#quick_send_mails', as: :admin_invitation_quick_send_mails
  
  post '/admin/invitations/:id/quick_order' => 'admin/invitations#quick_order', as: :admin_invitation_quick_order

  get '/admin/invitations/:id/guests/:guest_id/quick_remove' => 'admin/invitations#quick_remove', as: :admin_guest_quick_remove

  get '/admin/invitations/:id/new/quick_add' => 'admin/invitations#quick_add', as: :admin_guest_quick_add
  post '/admin/invitations/:id/quick_create' => 'admin/invitations#quick_create', as: :admin_guest_quick_create
  get '/admin/invitations/:id/quick_sort' => 'admin/invitations#quick_sort', as: :admin_invitation_quick_sort

  resources :guests
  resources :weddings
  resources :messageboards
  resources :invitations
  resources :messages
  resources :events
  resources :contacts
  resources :categories
  resources :albums
  resources :articles do
      resources :comments
  end
  
  mount Shrine.upload_endpoint(:cache) => "/upload"

end

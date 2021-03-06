Rails.application.routes.draw do
  resources :guests
  
  resources :invitations
  resources :sent_emails
  resources :email_events

  get '/admin/invitations/quick_events' => 'mailgun#quick_events', as: :admin_invitation_quick_events
  get '/admin/invitations/:id/quick_send' => 'mailgun#quick_send', as: :admin_invitation_quick_send
  
  get '/admin/invitations/:id/quick_whatsapp' => 'whatsapp#quick_whatsapp', as: :admin_invitation_quick_whatsapp
  
  post '/admin/invitations/:id/quick_send_mails' => 'mailgun#quick_send_mails', as: :admin_invitation_quick_send_mails
  
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

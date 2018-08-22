Rails.application.routes.draw do
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

Rails.application.routes.draw do
  
  devise_for :users, :controllers => { registrations: 'registrations' }  
  ActiveAdmin.routes(self)
  
  resources :articles do
      resources :comments

  end
  resources :contacts
  resources :categories
  root to: 'pages#index'
  get 'pages/contact'
  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

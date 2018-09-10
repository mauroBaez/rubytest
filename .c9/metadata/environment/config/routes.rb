{"changed":true,"filter":false,"title":"routes.rb","tooltip":"/config/routes.rb","value":"Rails.application.routes.draw do\n  resources :guests\n  \n  resources :invitations\n  get '/email_event' => 'admin/invitations#quick_send', as: :admin_invitation_quick_send\n  \n  get '/admin/invitations/:id/quick_send' => 'admin/invitations#quick_send', as: :admin_invitation_quick_send\n  get '/admin/invitations/:id/quick_whatsapp' => 'admin/invitations#quick_whatsapp', as: :admin_invitation_quick_whatsapp\n  \n  post '/admin/invitations/:id/quick_send_mails' => 'admin/invitations#quick_send_mails', as: :admin_invitation_quick_send_mails\n  \n  post '/admin/invitations/:id/quick_order' => 'admin/invitations#quick_order', as: :admin_invitation_quick_order\n\n  get '/admin/invitations/:id/guests/:guest_id/quick_remove' => 'admin/invitations#quick_remove', as: :admin_guest_quick_remove\n\n  get '/admin/invitations/:id/new/quick_add' => 'admin/invitations#quick_add', as: :admin_guest_quick_add\n  post '/admin/invitations/:id/quick_create' => 'admin/invitations#quick_create', as: :admin_guest_quick_create\n  get '/admin/invitations/:id/quick_sort' => 'admin/invitations#quick_sort', as: :admin_invitation_quick_sort\n\n  \n  resources :weddings\n  resources :messageboards\n  root to: 'pages#index'\n  resources :messages\n  resources :events\n  devise_for :users, :controllers => { registrations: 'registrations' }  \n  ActiveAdmin.routes(self)\n\n  resources :articles do\n      resources :comments\n\n  end\n  resources :contacts\n  resources :categories\n  resources :albums\n  \n\n  get 'pages/contact'\n  get 'pages/about'\n  mount Shrine.upload_endpoint(:cache) => \"/upload\"\n  #mount ImageUploader::UploadEndpoint => \"/upload\"\n\n  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html\nend\n","undoManager":{"mark":1,"position":6,"stack":[[{"start":{"row":37,"column":2},"end":{"row":37,"column":50},"action":"insert","lines":["mount SpecialDelivery::Engine => \"/email_events\""],"id":11}],[{"start":{"row":37,"column":0},"end":{"row":38,"column":0},"action":"remove","lines":["  mount SpecialDelivery::Engine => \"/email_events\"",""],"id":12}],[{"start":{"row":4,"column":0},"end":{"row":5,"column":0},"action":"remove","lines":["  get '/admin/invitations/:id/quick_send' => 'admin/invitations#quick_send', as: :admin_invitation_quick_send",""],"id":13},{"start":{"row":4,"column":0},"end":{"row":5,"column":0},"action":"insert","lines":["  get '/admin/invitations/:id/quick_send' => 'admin/invitations#quick_send', as: :admin_invitation_quick_send",""]}],[{"start":{"row":5,"column":0},"end":{"row":6,"column":0},"action":"insert","lines":["  get '/admin/invitations/:id/quick_send' => 'admin/invitations#quick_send', as: :admin_invitation_quick_send",""],"id":14}],[{"start":{"row":4,"column":109},"end":{"row":5,"column":0},"action":"insert","lines":["",""],"id":15},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":4,"column":8},"end":{"row":4,"column":40},"action":"remove","lines":["admin/invitations/:id/quick_send"],"id":16},{"start":{"row":4,"column":8},"end":{"row":4,"column":9},"action":"insert","lines":["e"]},{"start":{"row":4,"column":9},"end":{"row":4,"column":10},"action":"insert","lines":["m"]},{"start":{"row":4,"column":10},"end":{"row":4,"column":11},"action":"insert","lines":["a"]},{"start":{"row":4,"column":11},"end":{"row":4,"column":12},"action":"insert","lines":["i"]},{"start":{"row":4,"column":12},"end":{"row":4,"column":13},"action":"insert","lines":["l"]}],[{"start":{"row":4,"column":13},"end":{"row":4,"column":14},"action":"insert","lines":["_"],"id":17},{"start":{"row":4,"column":14},"end":{"row":4,"column":15},"action":"insert","lines":["e"]},{"start":{"row":4,"column":15},"end":{"row":4,"column":16},"action":"insert","lines":["v"]},{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"insert","lines":["e"]},{"start":{"row":4,"column":17},"end":{"row":4,"column":18},"action":"insert","lines":["n"]},{"start":{"row":4,"column":18},"end":{"row":4,"column":19},"action":"insert","lines":["t"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":4,"column":25},"end":{"row":4,"column":53},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1536539751269}
Rails.application.routes.draw do
  get 'contact_forms/new'

  get 'home/new'
  root 'home#new'
  get '/network', to: "home#network"
  get '/telephony', to: "home#telephony"
  get '/system', to: "home#system"
  get '/cloud', to: "home#cloud"
  get '/helpdesk', to: "home#helpdesk"
  get '/assetmanagement', to: "home#assetmanagement"
  get '/webdevelopment', to: "home#webdevelopment"
  get '/contactforms', to: "contact_forms#new"

  resources :contact_forms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

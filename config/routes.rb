Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',  to: 'sessions#new',     via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

  root 'static#home'
  match '/events',     to: 'static#events',    via: 'get'
  match '/portraits',  to: 'static#portraits', via: 'get'
  match '/landscape',  to: 'static#landscape', via: 'get'
  match '/video',      to: 'static#video',     via: 'get'
  match '/seniors',    to: 'static#seniors',   via: 'get'
  match '/about',      to: 'static#about',     via: 'get'
  match '/clients',    to: 'static#clients',   via: 'get'
  match '/contact',    to: 'contacts#new',     via: 'get' 
  resources "contacts", only: [:new, :create]
  resources :galleries
  match '/newgallery', to: 'galleries#new',    via: 'get'
end

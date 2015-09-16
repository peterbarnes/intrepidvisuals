Rails.application.routes.draw do

  root 'static#home'
  match '/events',     to: 'static#events',    via: 'get'
  match '/portraits',  to: 'static#portraits', via: 'get'
  match '/fashion',    to: 'static#fashion',   via: 'get'
  match '/video',      to: 'static#video',     via: 'get'
  match '/seniors',    to: 'static#seniors',   via: 'get'
  match '/about',      to: 'static#about',     via: 'get'
  match '/clients',    to: 'static#clients',   via: 'get'
  match '/contact',    to: 'contacts#new',     via: 'get' 
  match '/blog',       to: 'static#blog',      via: 'get'
  resources "contacts", only: [:new, :create]

  # CLIENT GALLERIES
  resources :galleries
  match '/greek_festival_8_29_15',         to: 'galleries#greek_festival_8_29_15',         via: 'get'
  match '/montage_9_2_15',                 to: 'galleries#montage_9_2_15',                 via: 'get'
  match '/eightnlofts_9_10_15',            to: 'galleries#eightnlofts_9_10_15',            via: 'get'
  match '/carla_seravalli_senior_9_12_15', to: 'galleries#carla_seravalli_senior_9_12_15', via: 'get'
end

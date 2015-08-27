Rails.application.routes.draw do
  root 'static#home'
  match '/events',    to: 'static#events',    via: 'get'
  match '/portraits', to: 'static#portraits', via: 'get'
  match '/landscape', to: 'static#landscape', via: 'get'
  match '/video',     to: 'static#video',     via: 'get'
  match '/seniors',   to: 'static#seniors',   via: 'get'
  match '/contact',   to: 'static#contact',   via: 'get' 
  match '/about',     to: 'static#about',     via: 'get'
end

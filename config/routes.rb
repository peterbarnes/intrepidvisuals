Rails.application.routes.draw do
  root 'static#root'
  match '/home',    to: 'static#home',    via: 'get'
  match '/photo',   to: 'static#photo',   via: 'get'
  match '/video',   to: 'static#video',   via: 'get'
  match '/contact', to: 'static#contact', via: 'get' 
end

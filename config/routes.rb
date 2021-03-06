Rails.application.routes.draw do

  root 'static#home'
  match '/concerts',     to: 'static#events',    via: 'get'
  match '/portraits',  to: 'static#portraits', via: 'get'
  match '/fashion',    to: 'static#fashion',   via: 'get'
  match '/features',    to: 'static#stories',   via: 'get'
  match '/video',      to: 'static#video',     via: 'get'
  match '/seniors',    to: 'static#seniors',   via: 'get'
  match '/about',      to: 'static#about',     via: 'get'
  match '/clients',    to: 'static#clients',   via: 'get'
  match '/contact',    to: 'contacts#new',     via: 'get' 
  match '/blog',       to: 'static#blog',      via: 'get'
  match '/lights',     to: 'static#lights',    via: 'get'
  match '/2015',       to: 'static#in_review_2015',      via: 'get'
  resources "contacts", only: [:new, :create]

  # CLIENT GALLERIES
  resources :galleries
  match '/greek_festival_8_29_15',             to: 'galleries#greek_festival_8_29_15',             via: 'get'
  match '/montage_9_2_15',                     to: 'galleries#montage_9_2_15',                     via: 'get'
  match '/eightnlofts_9_10_15',                to: 'galleries#eightnlofts_9_10_15',                via: 'get'
  match '/carla_seravalli_senior_9_12_15',     to: 'galleries#carla_seravalli_senior_9_12_15',     via: 'get'
  match '/brennan_roberson_senior_9_14_15',    to: 'galleries#brennan_roberson_senior_9_14_15',    via: 'get'
  match '/chelsea_stewart_senior_9_19_15',     to: 'galleries#chelsea_stewart_senior_9_19_15',     via: 'get'
  match '/floss_9_21_15',                      to: 'galleries#floss_9_21_15',                      via: 'get'
  match '/rachel_nesja_10_11_15',              to: 'galleries#rachel_nesja_10_11_15',              via: 'get'
  match '/annunciation_greek_orthodox_church', to: 'galleries#annunciation_greek_orthodox_church', via: 'get'

  # PHOTO STORIES
end

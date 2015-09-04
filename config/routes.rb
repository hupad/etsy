Rails.application.routes.draw do
  
  resources :listings
  get 'pages/About'
  get 'pages/Contact'

  root 'listings#index'
end

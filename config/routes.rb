Rails.application.routes.draw do
  
  devise_for :users
  resources :listings
  get 'pages/About'
  get 'pages/Contact'

  root 'listings#index'
end

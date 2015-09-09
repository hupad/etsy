Rails.application.routes.draw do
  
  devise_for :users
  resources :listings do
  	resources :orders
  end
  get 'pages/About'
  get 'pages/Contact'
  get 'seller' => 'listings#seller'
  root 'listings#index'
end

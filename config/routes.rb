Rails.application.routes.draw do

  root 'application#index'
  devise_for :users

  resources :foods

  get '/products', to: 'products#index'


end

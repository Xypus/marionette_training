Rails.application.routes.draw do
  root 'application#index'

  devise_for :users

  resources :products
  resources :categories
end

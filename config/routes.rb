Rails.application.routes.draw do

  root 'application#index'
  devise_for :users

  resources :meals
  resources :foods


end

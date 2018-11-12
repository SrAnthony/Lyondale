Rails.application.routes.draw do
  devise_for :users
  root 'dashboard#index'
  get 'dashboard' => 'dashboard#index'

  resources :rents
  resources :properties
  resources :customers
end

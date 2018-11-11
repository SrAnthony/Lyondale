Rails.application.routes.draw do
  root 'dashboard#index'

  resources :rents
  resources :properties
  resources :customers
end

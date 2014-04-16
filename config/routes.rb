Airbnb::Application.routes.draw do
  root to: 'rooms#index'
  devise_for :users
  resources :rooms
  resources :users
  resources :countries
  resources :regions
  resources :cities
  resources :neighborhoods
end

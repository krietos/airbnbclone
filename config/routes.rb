Airbnb::Application.routes.draw do
  root to: 'rooms#index'
  devise_for :users
  resources :rooms
end

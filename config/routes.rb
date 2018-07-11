Rails.application.routes.draw do
  resources :reviews
  resources :bookings
  resources :djs
  resources :hosts
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

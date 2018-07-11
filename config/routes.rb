Rails.application.routes.draw do
  resources :reviews
  resources :bookings
  resources :djs
  resources :hosts
  root 'home#index'
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

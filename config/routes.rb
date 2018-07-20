Rails.application.routes.draw do
  get "home/profile"
  resources :reviews
  resources :djs do
    resources :bookings
  end
  resources :hosts
  resources :charges
  root 'home#index'
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks", registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

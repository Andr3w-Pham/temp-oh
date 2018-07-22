Rails.application.routes.draw do
  get "home/profile"
  get "bookings/my_bookings"
  resources :reviews
  resources :djs do
    resources :bookings
    resources :reviews
  end
  resources :hosts
  resources :charges, only: [:new, :create]
  root 'home#index'
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks", registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root to: "public#homepage"

  resources :sessions, only: [:new, :create, :destroy]
  get '/signup', to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  resources :trips
  resources :locations
  resources :reviews
  resources :reservations
  resources :listings
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

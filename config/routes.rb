Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :users, only: [:show, :create]
  resources :films, only: [:index, :show]
  resources :locations, only: [:index, :show, :create, :update]
  resources :lists, only: [:index, :show, :create, :destroy]
  resources :trips, only: [:index, :show, :create, :update, :destroy]
  resources :reviews, only: [:create, :destroy]
  resources :film_trivia, only: [:create, :destroy]

  # Custom Routes
  get "/search", to: "locations#search"

  root "films#index"
end

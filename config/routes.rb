Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users
  root to: "pages#home"

  resources :offices do
    resources :bookings, only: [:create, :edit, :update]
  end

  resources :bookings, only: [:destroy] do
    resources :reviews, only: [:create]
  end

  resources :reviews, only: [:destroy]

  get "/my_properties", to: "pages#my_properties", as: :my_properties
  get "/my_bookings", to: "pages#my_bookings", as: :my_bookings
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users
  root to: "pages#home"

  resources :offices do
    resources :bookings, only: [:index, :create]
    resources :office_facilities, only: [:new, :create]
  end

  resources :bookings, only: [:destroy, :edit, :update] do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]
  resources :office_facilities, only: [:edit, :update, :destroy]

  get "/my_properties", to: "pages#my_properties", as: :my_properties
  get "/my_bookings", to: "pages#my_bookings", as: :my_bookings
  get "/my_account", to: "pages#my_account", as: :my_account
end

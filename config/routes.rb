Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users
  root to: "pages#home"

  resources :offices do
    resources :bookings, only: %i[index create]
    resources :office_facilities, only: %i[new create]
  end

  resources :bookings, only: %i[show destroy edit update] do
    resources :reviews, only: %i[new create]
    get "/download", to: "bookings#download"
  end

  resources :reviews, only: [:destroy]
  resources :office_facilities, only: %i[edit update destroy]

  get "/my_properties", to: "pages#my_properties", as: :my_properties
  get "/my_bookings", to: "pages#my_bookings", as: :my_bookings
  get "/my_account", to: "pages#my_account", as: :my_account
end

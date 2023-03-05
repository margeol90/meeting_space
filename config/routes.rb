Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users
  root to: "pages#home"

  resources :offices do
    resources :bookings, only: [:create, :edit, :update]
    # collection do
    #   get :my_properties
    # end
  end

  resources :bookings, only: [:destroy] do
    resources :reviews, only: [:create]
    # collection do
    #   get :my_bookings
    # end
  end

  resources :reviews, only: [:destroy]
end

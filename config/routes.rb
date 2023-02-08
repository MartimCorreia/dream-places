Rails.application.routes.draw do
  devise_for :users

  unauthenticated :user do
    root to: "pages#home"
  end
  authenticated do
    root to: "houses#index", as: :authenticated_root
  end
  # get "pages/home", to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:update], as: "update"
  get "pages/dashboard", to: "pages#dashboard"

  resources :users do
    get "pages/profile", to: "pages#profile"
    member do
      put "picture_update"
    end
  end

  resources :houses, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
    resources :notifications, only: [:new, :create]
  end

  delete "notifications/:id", to: "notifications#destroy", as: "delete_notification"

  resources :notifications, only: [:index, :show] do

    collection do
      get :user_personal
    end
  end

  resources :chatrooms, only: [:show] do
    resources :messages, only: :create
  end

  resources :bookings, only: [:index] do
    resources :chatrooms, only: :create
    collection do
      get :my
    end
  end
end

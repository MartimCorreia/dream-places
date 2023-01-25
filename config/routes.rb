Rails.application.routes.draw do
  devise_for :users


  unauthenticated :user do
    root to: "pages#home"
  end
  authenticated do
    root to: "pages#dashboard", as: :authenticated_root
  end
  # get "pages/home", to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :houses, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index] do
    collection do
      get :my
    end
  end
end

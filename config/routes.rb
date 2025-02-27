Rails.application.routes.draw do
    get "up" => "rails/health#show", as: :rails_health_check
    resources :lists, only: [:index, :show, :new, :create] do
      resources :bookmarks, only: [:new, :create]
    end
    resources :bookmarks, only: [:destroy]
  end


  # Defines the root path route ("/")
  # root "posts#index"

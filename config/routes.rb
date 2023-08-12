Rails.application.routes.draw do
  resources :customers do
    resources :rentals, only: [:create]
  end

  resources :movies do
    resources :rentals, only: [:create]
    member do
      delete 'remove_customer', to: 'movies#remove_customer'
      post 'assign_customer', to: 'movies#assign_customer'
    end
  end

  resources :rentals, only: [:index, :update]

  root 'movies#index'
end











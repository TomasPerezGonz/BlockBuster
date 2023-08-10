Rails.application.routes.draw do
  resources :movies
  resources :customers
  resources :rentals, only: [:create]
  root "movies#index"
end

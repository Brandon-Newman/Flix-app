Rails.application.routes.draw do
  resources :users
  resources :movies do
    resources :reviews
  end
  
  root "movies#index"

  resources :movies

  get "signup" => "users#new"


end
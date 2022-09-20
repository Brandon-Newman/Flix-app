Rails.application.routes.draw do
  resources :genres
  resources :users
  resources :movies do
    resources :reviews
    resources :favorites, only: [:create, :destroy]
  end
  
  root "movies#index"

  resources :movies

  get "signup" => "users#new"

  resource :session, only: [:new, :create, :destroy]

end
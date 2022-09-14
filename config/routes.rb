Rails.application.routes.draw do
  resources :favorites
  resources :users
  resources :movies do
    resources :reviews
  end
  
  root "movies#index"

  resources :movies

  get "signup" => "users#new"

  resource :session, only: [:new, :create, :destroy]

end
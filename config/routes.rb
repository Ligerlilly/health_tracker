Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: "users#current_user_home", as: :authenticated_root 
  end
  root to: 'home#index'

  resources :foods
  resources :exercises
  resources :workouts
  resources :meals
  resources :users, only: [:show]

end

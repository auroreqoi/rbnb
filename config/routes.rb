Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :hives, only: [:index, :show, :new, :create] do
    resources :reservations, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :reservations, only: [:index] do
    member do
      patch :accept
      patch :decline
    end
  end
  namespace :queen do
    resources :reservations, only: [:index]
  end
end

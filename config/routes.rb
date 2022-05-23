Rails.application.routes.draw do
  root to: 'pages#home'
  resources :hives, only: [:index, :show, :new, :create]
  resources :reservations, only: [:index, :new, :create] do
    member do
      patch :accept
      patch :decline
    end
  end
  namespace :queen do
    resources :reservations, only: [:index]
  end
end

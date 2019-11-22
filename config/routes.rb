Rails.application.routes.draw do


  root to: 'pages#home'
  resources :planes, only: [:index, :new, :create, :show] do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :bookings, only: [:show]
  resources :planes, only: [:destroy]
  resources :reviews, only: [:destroy]

  get "dashboard", to: "bookings#dashboard", as: "dashboard"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

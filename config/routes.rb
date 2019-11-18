Rails.application.routes.draw do

  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/show'
  root to: 'pages#home'
  resources :planes, only: [:index, :new, :create, :show]
  resources :bookings, only: [:index, :new, :create, :show]




  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

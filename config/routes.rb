Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'pages#dashboard'
  # resources :pages, only: [:dashboard]

  resources :items, only: [:show, :index, :new, :create, :delete] do
    resources :bookings, only: [ :create ]
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end

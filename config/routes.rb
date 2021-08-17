Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

resources :items, only: [:show, :index] do
  resources :bookings, only: [ :create ]
end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end

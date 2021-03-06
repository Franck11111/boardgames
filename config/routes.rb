Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'components', to: 'pages#components', as: :components
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :boardgames do
    resources :bookings, only: [ :new, :create]
  end
  resources :bookings, only: [:index]
end

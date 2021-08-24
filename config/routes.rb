Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'components', to: 'pages#components', as: :components
  resources :boardgames, only: [:index]
end

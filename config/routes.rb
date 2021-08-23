Rails.application.routes.draw do
  root to: 'pages#home'
  get 'components', to: 'pages#components', as: :components

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

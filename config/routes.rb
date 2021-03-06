Rails.application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :users
  root to: 'pages#home'

  resources :cars, only: [:index, :new, :show, :create]
  resources :drivers, only: [:new, :create]
  get 'note', to: 'pages#note'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


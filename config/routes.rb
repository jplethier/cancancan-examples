Rails.application.routes.draw do
  devise_for :users

  resources :tasks
  resources :users

  root to: 'home#index'
end

Rails.application.routes.draw do
  devise_for :users

  resources :tasks
  resources :users, except: %i[new create show]

  root to: 'home#index'
end

Rails.application.routes.draw do
  get 'statics/home'
  get 'statics/help'

  resources :microposts
  resources :users
  # root 'application#hello'
  root 'users#index'
end

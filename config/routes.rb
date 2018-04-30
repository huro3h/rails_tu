Rails.application.routes.draw do
  get 'statics/home'
  get 'statics/help'
  get 'statics/about'

  resources :microposts
  resources :users
  # root 'application#hello'
  root 'users#index'
end

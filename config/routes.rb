Rails.application.routes.draw do
  get 'statics/home'
  get 'statics/help'
  get 'statics/about'
  get 'statics/contact'

  resources :microposts
  resources :users
  # root 'application#hello'
  root 'users#index'
end

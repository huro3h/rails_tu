Rails.application.routes.draw do
  root 'statics#home'

  get 'statics/home'
  get 'statics/help'
  get 'statics/about'
  get 'statics/contact'

  resources :microposts
  resources :users
end

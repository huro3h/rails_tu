Rails.application.routes.draw do
  root 'statics#home'

  get 'statics/home'
  get '/help', to: 'statics#help'
  get '/about', to: 'statics#about'
  get '/contact', to: 'statics#contact'
  resources :microposts
  resources :users
end

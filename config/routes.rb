Rails.application.routes.draw do
  root 'statics#home'

  get 'statics/home'
  get '/help', to: 'statics#help'
  get '/about', to: 'statics#about'
  get '/contact', to: 'statics#contact'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :microposts
  resources :users
end

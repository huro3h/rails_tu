Rails.application.routes.draw do
  root 'statics#home'

  get 'statics/home'
  get '/help', to: 'statics#help'
  get '/about', to: 'statics#about'
  get '/contact', to: 'statics#contact'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get 'sessions/new'

  resources :microposts
  resources :users
end

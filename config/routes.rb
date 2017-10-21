Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/help'
  get 'static_pages/about'
  # get 'contact', to: 'static_pages#contact', as: '/contact'
  get 'static_pages/contact'

  resources :microposts
  resources :users
end

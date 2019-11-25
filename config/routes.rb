Rails.application.routes.draw do
  #get 'users/new'
  get 'static_pages/home'

  get '/signup', to: 'users#new'
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  # post '/signup', to: 'static_pages#signup'
  # post '/login', to: 'static_pages#login'
  resources :users

  root 'static_pages#home'
end

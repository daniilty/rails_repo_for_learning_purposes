Rails.application.routes.draw do
  get 'session/new'
  get 'users/new'
  get '/home' , to: 'sample#home'
  get '/about', to:'sample#about'
  get '/help', to: 'sample#help'
  get '/sign_up', to: 'users#new'
  post '/sign_up', to: 'users#create'
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  root 'sample#home'
  resources :users
  resources :account_activation, only: [:edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

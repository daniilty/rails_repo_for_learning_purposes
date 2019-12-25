Rails.application.routes.draw do
  get 'users/new'
  get '/home' , to: 'sample#home'
  get '/about', to:'sample#about'
  get '/help', to: 'sample#help'
  get '/sign_up', to: 'users#new'
  root 'sample#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

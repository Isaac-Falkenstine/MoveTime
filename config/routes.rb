Rails.application.routes.draw do
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"

  get '/register', to: "users#new"
  resources 'users'
  get '/dashboard', to: "users#show", as: "dashboard"

  get "/location", to: "location#show"
end

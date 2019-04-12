Rails.application.routes.draw do
  get '/register', to: "users#new"
  resources 'users'
  get '/dashboard', to: "users#show", as: "dashboard"
end

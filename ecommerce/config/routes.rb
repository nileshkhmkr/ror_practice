Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/catalogue", to: "catalogue#index"
  get "/catalogue/index", to: "catalogue#index"

  post "signup", to: "users#create"
  get "signup", to: "users#new"

  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
  get "login", to: "sessions#new"

  get "admin", to: "admins#index"

  get "stock_items", to: "stock_items#index"

  # Defines the root path route ("/")
  root "catalogue#index"
end

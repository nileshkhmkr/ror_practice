Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/catalogue", to: "catalogue#index"
  get "/catalogue/index", to: "catalogue#index"
  post "sign_up", to: "users#create"
  get "sign_up", to: "users#new"

  # Defines the root path route ("/")
  root "catalogue#index"
end

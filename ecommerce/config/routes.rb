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
  get "admin/index", to: "admins#index"

  get "stock_items", to: "stock_items#index"
  get "stock_items/index", to: "stock_items#index"
  get 'stock_items/new', to: 'stock_items#new'
  post 'stock_items/create', to: 'stock_items#create'
  get 'stock_items/read/:id', to: 'stock_items#read'
  get 'stock_items/edit/:id', to: 'stock_items#edit'
  patch 'stock_items/update/:id', to: 'stock_items#update'
  delete 'stock_items/delete/:id', to: 'stock_items#delete'

  # Defines the root path route ("/")
  root "catalogue#index"
end

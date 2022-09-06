Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "signup", to: "users#create"
  get "signup", to: "users#new"

  get "profile", to: "users#edit"
  patch "user/update", to: "users#update"

  get 'addresses/new', to: 'addresses#new'
  post 'addresses/create', to: 'addresses#create'
  get "addresses/edit/:id", to: "addresses#edit"
  patch "addresses/update/:id", to: "addresses#update"
  delete 'addresses/delete/:id', to: 'addresses#delete'

  get "catalogue", to: "catalogue#index"
  get "catalogue/index", to: "catalogue#index"  
  get "orders", to: "catalogue#orders"

  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
  get "login", to: "sessions#new"

  get "admin", to: "admins#index"
  get "admin/index", to: "admins#index"

  get "stock_items", to: "stock_items#index"
  get "stock_items/index", to: "stock_items#index"
  get 'stock_items/new', to: 'stock_items#new'
  post 'stock_items/create', to: 'stock_items#create'
  get 'stock_items/view/:id', to: 'stock_items#view'
  get 'stock_items/edit/:id', to: 'stock_items#edit'
  patch 'stock_items/update/:id', to: 'stock_items#update'
  delete 'stock_items/delete/:id', to: 'stock_items#delete'

  get 'carts', to: 'carts#index'
  get 'carts/index', to: 'carts#index'
  get 'carts/add_item/:id', to: 'carts#add_item'

  # Defines the root path route ("/")
  root "catalogue#index"
end

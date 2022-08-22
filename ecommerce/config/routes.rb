Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/catalogue', to: 'catalogue#index'
  get '/catalogue/index', to: 'catalogue#index'

  # Defines the root path route ("/")
  root "catalogue#index"
end

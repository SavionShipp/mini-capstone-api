Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # show a single product
  get "/product/:id" => "products#show"

  #show all products
  get "/products" => "products#index"

  #creating a new item
  post "/product" => "products#create"

  #update info
  patch "/product/:id" => "products#update"
  # Defines the root path route ("/")
  # root "posts#index"

  #delete info
  delete "/product/:id" => "products#destroy"

  #create users new model
  post "/users" => "users#create"

  #creates a session for user
  post "/sessions" => "sessions#create"

  get "/carted_products" => "carted_products#index"

  post "/carted_product" => "carted_products#create"

  delete "/carted_product/:id" => "carted_products#destroy"

  post "/order" => "orders#create"

  get "/orders" => "orders#index"
end

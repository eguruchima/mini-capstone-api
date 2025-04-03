Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  # User authentication
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy"

  # resources/restful routes
  resources :products
  resources :orders, only: [ :index, :create, :show ]
  resources :carted_products, only: [ :index, :create, :destroy ]
end

Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    get "/routines" => "routines#index"
    post "/routines" => "routines#create"
    get "/routines/:id" => "routines#show"
    patch "/routines/:id" => "routines#update"
    delete "/routines/:id" => "routines#destroy"

    post "/user" => "user#create"
    get "/user/:id" => "user#show"

    post "/sessions" => "sessions#create"

  end
end

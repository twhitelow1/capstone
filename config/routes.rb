Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    post "/homes" => "homes#create"
    get "/homes" => "homes#index"

    get "/rooms" => "rooms#index"
    post "/rooms" => "rooms#create"

    get "/chores" => "chores#index"
    post "chores" => "chores#create"
  end
end

Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    post "/homes" => "homes#create"
    get "/homes/:id" => "homes#show"
    # update "/homes/:id" => "homes#update"

    get "/rooms" => "rooms#index"
    post "/rooms" => "rooms#create"

    get "/chores" => "chores#index"
    post "/chores" => "chores#create"
    # update "/chores" => "chores#update"

    get "/assignments" => "assignments#index"
    post "/assignments" => "assignments#create"
    get "/assignments/:id" => "assignments#show"
    patch "/assignments/:id" => "assignments#update"
  end
end

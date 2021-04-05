Rails.application.routes.draw do
  namespace :admin do
      resources :admin_users
      resources :views
      resources :home
      resources :text

      root to: "admin_users#index"
    end
  devise_for :admin_users
  devise_for :views
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "home#index"
end

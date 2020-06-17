Rails.application.routes.draw do
  resources :users
  resources :user, only: [:new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/sign_in", to: "users#sign_in_view"
  post "/sign_in", to: "users#sign_in"
end

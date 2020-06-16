Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  resources :events
  root to: "users#index"
end

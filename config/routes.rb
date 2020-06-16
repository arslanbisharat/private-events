Rails.application.routes.draw do
  get 'static_pages/home'
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'static_pages#home'
  resources :users
  resources :events
  resources :invitations
  get 'past_events', to: 'events#past'
end

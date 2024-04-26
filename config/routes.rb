Rails.application.routes.draw do
  devise_for :recepcionists
  resources :subscriptions
  resources :subscription_plans
  resources :plans
  devise_for :super_admins
  devise_for :admins
  resources :gyms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "plans#index"
end

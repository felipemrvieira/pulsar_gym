Rails.application.routes.draw do
  resources :exercise_completitions
  resources :checkins
  resources :exercises
  resources :workouts
  resources :measures
  resources :examinations
  resources :enrollments
  resources :gym_plans
  devise_for :customers
  devise_for :instructors
  resources :addresses
  resources :neighbors
  resources :cities
  resources :states
  resources :countries
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

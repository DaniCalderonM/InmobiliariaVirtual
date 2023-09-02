Rails.application.routes.draw do
  get 'cities/index'
  get 'home/index'
  devise_for :users
  resources :apartments
  resources :buildings
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end

Rails.application.routes.draw do
  resources :projects
  resources :auctions
  resources :products
  resources :meeting_locations
  get 'app/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

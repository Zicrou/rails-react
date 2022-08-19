Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :sessions, only: :create 
  resources :registrations, only: :create 
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  get :list, to: "static#index"
  # Defines the root path route ("/")
  root "static#home"
end

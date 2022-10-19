Rails.application.routes.draw do
  resources :service_links, only: [:index, :show, :create, :update, :destroy]
  resources :services, only: [:index, :show, :create, :update, :destroy]
  resources :diagnoses, only: [:index, :show, :create, :update, :destroy]
  resources :conditions, only: [:index, :show, :create, :update, :destroy]
  resources :prescriptions, only: [:index, :show, :create, :update, :destroy]
  resources :medicines, only: [:index, :show, :create, :update, :destroy]
  resources :medical_profiles, only: [:index, :show, :create, :update, :destroy]
  resources :profiles, only: [:index, :show, :create, :update, :destroy]
  resources :stations, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :create, :update, :destroy]
  #Session Routes
  post "login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  #User BASIC CRUD Routes
  get "me", to: "users#show"

  #User Custom Routes

end

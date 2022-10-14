Rails.application.routes.draw do
  resources :service_links
  resources :services
  resources :stations
  resources :diagnoses
  resources :conditions
  resources :prescriptions
  resources :medicines
  resources :medical_profiles
  resources :users
  resources :profiles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

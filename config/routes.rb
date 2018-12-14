Rails.application.routes.draw do
  
  root 'home#index'
  resources :buildings
  resources :companies
  resources :people
end

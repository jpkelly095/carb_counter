Rails.application.routes.draw do
  root "home#index"
  
  resources :meals
  resources :foods
  resources :ingredients
  
  namespace :admin do
    root "admin#index"
  end
end

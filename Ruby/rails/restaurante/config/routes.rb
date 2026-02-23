Rails.application.routes.draw do
  resources :clientes
  resources :pessoas
  resources :restaurantes
  resources :restaurante
  
  get "up" => "rails/health#show", as: :rails_health_check


  
end

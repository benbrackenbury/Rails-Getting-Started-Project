Rails.application.routes.draw do
  root "products#index"
  get "up" => "rails/health#show", as: :rails_health_check

  resource :session
  resources :passwords, param: :token
  resources :products
  resources :subscribers, only: [ :create ]
end

Rails.application.routes.draw do
  get 'payment', to: 'payment#index'
  post 'payment', to: 'payment#charge'

  resources :products
  root to: 'visitors#index'
end

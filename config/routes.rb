Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  
  get 'payment', to: 'payment#index'
  get 'payment/confirmation', to: 'payment#thank_you', as: 'payment_thank_you'
  post 'payment', to: 'payment#charge'

  resources :products

  root to: 'visitors#index'
end

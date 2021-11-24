Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[show]
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "dashboard", to: "pages#dashboard"
  resources :products, only: %i[new create edit update show index]
  resources :campaigns, only: %i[new create edit update show]
  resources :campaign_products, only: %i[show index] do
    resources :order_items, only: %i[create]
  end
end

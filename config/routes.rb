Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[show]
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"
  resources :products, only: %i[new create edit update show]
  resources :campaigns, only: %i[new create edit update show]
  resources :campaign_products, only: %i[show index] do
    resources :order_items, only: %i[create]
  end
end

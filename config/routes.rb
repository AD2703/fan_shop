Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[show index]
  root to: 'pages#home'
  get "dashboard", to: "pages#dashboard"

  resources :products, only: %i[new create edit update show index]
  resources :campaigns, only: %i[new create edit update show] do
    resources :campaign_products, only: %i[create]
  end
  resources :campaign_products, only: %i[show index destroy] do
    resources :order_items, only: %i[create]
  end

end

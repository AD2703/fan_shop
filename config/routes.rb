Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[show index]
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "dashboard", to: "pages#dashboard"
  get "about", to: "pages#about"
  get "cart", to: "pages#cart"
  resources :products, only: %i[new create edit update show index]
  resources :campaigns, only: %i[new create edit update show] do
    resources :campaign_products, only: %i[create index show]
  end
  resources :orders, only: [:show, :index] do
    resources :payments, only: :new
    resources :order_items, only: [:create]
  end
  resources :campaigns, only: [] do
    member do
      patch :start
      patch :finish
    end
  end
  resources :orders, only: [] do
    member do
      patch :pay
    end
  end
  resources :campaign_products, only: %i[destroy]
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "pages#home"
  devise_for :users

  resources :foods do
    resources :pairings
    resources :matches
  end

  resources :drinks do
    resources :pairings
    resources :matches
    # resources :categorie_drinks
  end

  resources :categories do
    resources :categorie_drinks
    resources :foods
    # resources :user_categories
  end

  resources :pairings
  resources :matches

  resources :categorie_drinks

  resources :user_categories

  # Defines the root path route ("/")
  # root "posts#index"
end

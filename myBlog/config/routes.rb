Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  resources :posts
  resources :users do
    resources :posts do
      resources :comments
    end
  end
  resources :categories
end

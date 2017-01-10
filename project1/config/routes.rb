Rails.application.routes.draw do
  root 'static_pages#home'

  # devise_for :admins
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # devise_for :admins, controllers: { sessions: 'users/sessions' }
  # resource :users
  # root to: ''
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

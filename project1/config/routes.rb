Rails.application.routes.draw do
  # resource :users
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  authenticated :user do
  root :to => "static_pages#home"
end
 devise_scope :user do 
  root :to => "users/sessions#new"
  end 
end

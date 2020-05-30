Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'movies#index'
  resources :movies, only: :index
  get "/aws",to:"texts#index"
  resources :questions, only: [:index, :create]
end

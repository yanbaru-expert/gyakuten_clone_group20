Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'movies#index'
  resources :movies, only: :index
  resources :aws_texts
  resources :questions, only: [:index, :create, :show] do
  resources :solutions, only: [:create]
  resources :talks, only: [:index]
  end
  resources :phps, only: :index
end

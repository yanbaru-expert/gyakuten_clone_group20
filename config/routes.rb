Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'movies#index'
  resources :movies, only: :index do
    resources :watched_movies, only: [:create, :destroy]
  end
  resources :aws_texts
  resources :talks, only: :index
  resources :writing, only: :index
  resources :questions, only: [:index, :create, :show] do
  resources :solutions, only: [:create]
  end
  resources :phps, only: :index
  resources :monies, only: :index
  resources :marketings, only: :index
  resources :live_cordings
  resources :lines, only: [:index, :show]
  resources :edit_movies, only: :index
  resources :texts, only: [:index, :show]
end

Rails.application.routes.draw do
  devise_for :users
  resources :posts
  get '/archive' => 'posts#archive'

  namespace :admin do
    resources :posts
  end

  root to: 'posts#index'
end


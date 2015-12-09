Rails.application.routes.draw do
  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy] do
      resources :likes, only: [:create, :destroy]
    end
  end

  resources :posts
  resources :locations
  devise_for :users
  resources :users, only: [:show]

  root 'users#show'

end

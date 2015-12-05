Rails.application.routes.draw do
  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  resources :posts

  devise_for :users
  resources :users, only: [:show]
  root 'users#show'

end

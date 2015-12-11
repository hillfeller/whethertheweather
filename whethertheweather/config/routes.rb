Rails.application.routes.draw do

  get 'welcome/index'

  resources :posts, except: [:create, :destroy] do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy, :update, :new, :edit]
  end

  resources :comments, only: [] do
    resources :likes, only: [:create, :destroy]
  end

  resources :posts, only: [:create, :destroy]
  devise_for :users
  resources :users, only: [:show] do
    resources :ailments
  end

  resources :locations

  root 'welcome#index'

end

Rails.application.routes.draw do

  resources :tests
  resources :labels, only: [:show, :create, :destroy]

  get 'welcome/index'

  resources :posts, except: [:create, :destroy] do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy, :update, :new, :edit]
  end

  resources :comments, only: [] do
    resources :likes, only: [:create, :destroy]
  end

  resources :posts, only: [:create, :destroy, :show]
  devise_for :users

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :relationships, only: [:create, :destroy, :show]

  resources :ailments

  resources :locations

  root 'welcome#index'

end

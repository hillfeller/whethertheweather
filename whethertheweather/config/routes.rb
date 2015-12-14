Rails.application.routes.draw do

  resources :labels, only: [:show]

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

  resources :ailments

  resources :locations

  root 'welcome#index'

end

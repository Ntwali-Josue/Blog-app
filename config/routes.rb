Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'users#index'
  get '/all_posts', to: 'posts#all_posts'
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create, :destroy]
  end
  # Defines the root path route ("/")
  # root "articles#index"

  resources :posts do
    resources :comments, only: [:create]
    resources :likes, only: [:create]
  end
end

Rails.application.routes.draw do
  resources :posts
  get 'home/index'
  root 'home#index'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get '/posts/:user_id/posts' => 'posts#user_posts', as: 'user_posts'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end 

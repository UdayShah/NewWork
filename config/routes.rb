Rails.application.routes.draw do
  get 'static_pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'password_resets/new'
  #
  # get 'password_resets/edit'
  #
  # root   'static_pages#home'
  # get    '/help',    to: 'static_pages#help'
  # get    '/about',   to: 'static_pages#about'
  # get    '/contact', to: 'static_pages#contact'
  # get    '/signup',  to: 'users#new'
  # get    '/login',   to: 'sessions#new'
  # post   '/login',   to: 'sessions#create'
  # delete '/logout',  to: 'sessions#destroy'
  # get '/genres/new', to: 'genres#new'
  # post '/genres/new',   to: 'genres#create'
  # get	 '/subscriptions',    to: 'subscriptions#index'
  # get  '/genres',           to: 'genres#index'
  # post	 '/genres/:id',    to: 'subscriptions#create'
  # post '/items/:id/edit', to: 'items#update'
  # get '/items/new', to: 'items#new'
  # post '/items/new',   to: 'items#create'
  # post '/genres/:id/edit', to: 'genres#update'
  #
  # resources :users
  # resources :subscriptions
  # resources :genres
  # resources :items
  # resources :account_activations, only: [:edit]
  # resources :password_resets, only: [:new, :create, :edit, :update]

  root  'static_pages#home'
end

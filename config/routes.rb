Rails.application.routes.draw do
  get 'skillsets/new'

  get 'skills/new'

  root   'static_pages#home'
  get    '/signup',        to: 'users#new'
  get    '/login',         to: 'sessions#new'
  post   '/login',         to: 'sessions#create'
  delete '/logout',        to: 'sessions#destroy'
  get    '/locations',     to: 'locations#new'
  get    '/skillsets',     to: 'skillsets#new'
  post   '/skillsets',     to: 'skillsets#create'

  resources :users
  resources :users do
    member do
      post 'upload_picture'
      post 'upload_resume'
    end
  end
  resources :sessions
  resources :locations
  resources :skills
  resources :skillsets
end

Rails.application.routes.draw do
  get 'skillset/new'

  get 'skills/new'

  root   'static_pages#home'
  get    '/signup',        to: 'users#new'
  get    '/login',         to: 'sessions#new'
  post   '/login',         to: 'sessions#create'
  delete '/logout',        to: 'sessions#destroy'
  get    '/locations',     to: 'locations#new'
  get    '/skillsets',     to: 'skillset#new'
  post   '/skillsets',     to: 'skillset#create'

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
  resources :skillset
end

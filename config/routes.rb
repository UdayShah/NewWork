Rails.application.routes.draw do
  root   'static_pages#home'
  get    '/signup',     to: 'users#new'
  get    '/login',      to: 'sessions#new'
  post   '/login',      to: 'sessions#create'
  delete '/logout',     to: 'sessions#destroy'
  get    '/locations',  to: 'locations#new'

  resources :users
  resources :users do
      member do
          post 'upload_picture'
          post 'upload_resume'
      end
  end

  resources :sessions
  resources :locations
end

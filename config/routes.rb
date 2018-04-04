Rails.application.routes.draw do
  get 'postings/new'

  get 'postings/show'

  get 'skillsets/new'

  get 'skills/new'

  post 'skillsets/submit'

  root   'static_pages#home'
  get    '/signup',        to: 'users#new'
  get    '/login',         to: 'sessions#new'
  post   '/login',         to: 'sessions#create'
  delete '/logout',        to: 'sessions#destroy'
  get    '/locations',     to: 'locations#new'
  get    '/skillsets',     to: 'skillsets#new'
  post   '/skillsets',     to: 'skillsets#create'
  get    '/postings',      to: 'postings#show'


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
  resources :postings
end

Rails.application.routes.draw do
  get 'sessions/new'
  resources :questions
  resources :answers
  resources :users
  resources :groups
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'sessions#new'
  get "/", to: "sessions#new"
end

Rails.application.routes.draw do
  resources :questions
  resources :answers
  resources :users
  resources :groups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "questions#index"
end

Rails.application.routes.draw do
  get 'session/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home/index'

  resources :users
  resources :images

  get 'login', to:'sessions#login'
  get 'auth/google_oauth2/callback', to: 'sessions#create'

  root 'home#index'
end

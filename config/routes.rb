Rails.application.routes.draw do
  resources :lesson_events
  resources :lessons
  resources :users, only: [:index, :show, :create, :update, :destroy]
# resources :users, only: [:create, :update]
  # resources :users, only: [:create]

  post '/login', to: 'auth#create'
  post '/auto_login', to: 'auth#auto_login'
  get '/profile', to: 'users#profile'
  get '/logged_in', to: 'application#logged_in?'
  post '/lessoncomplete', to: 'lesson_events#update'


end

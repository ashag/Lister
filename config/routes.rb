Lister::Application.routes.draw do
  
  root 'users#welcome'
  get 'users/new'         => 'users#new', as: :sign_in
  resources :session, only: [:new, :create]
  resources :users, only: [:index, :new, :create, :show]
  resources :lists, only: [:index, :new, :create, :show]

  # get '/users'         => 'users#index'
  # get  '/users/new'    => 'users#new'
  # post '/users'        => 'users#create'

end

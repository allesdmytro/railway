Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  resources :trains
  resources :stations

  get '/connect', to: 'stations#connect'
  get '/disconnect', to: 'stations#disconnect'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

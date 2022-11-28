Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root 'pages#home'
  # get 'sessions/create'
  # get 'sessions/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get 'foo', to: 'web/auth#callback', as: :foo_request
  # Defines the root path route ("/")
  # root "articles#index"
  # get 'auth/:provider/callback', to: 'sessions#create'
  # get '/login', to: 'sessions#new'
end
